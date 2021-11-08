define([], function () {
    'use strict';

    function getLibarytemTypes(serverId) {

        var types = AndroidLocalDatabase.getLibraryItemTypes(serverId);
        return Promise.resolve(JSON.parse(types || "[]"));
    }

    function getLibraryItemsByIds(serverId, ids) {

        var items = AndroidLocalDatabase.getLibraryItemsByIds(serverId, JSON.stringify(ids || []));
        return Promise.resolve(parseJSON(items));
    }

    function getLibraryItemPathsByIds(serverId, ids) {

        ids = ids || [];
        var items = [];
        // SQL queries are limited to 999 variables
        var chunk = 990;
        var i;
        for (i = 0; i < ids.length; i += chunk) {
            var itemsJson = AndroidLocalDatabase.getLibraryItemPathsByIds(serverId, JSON.stringify(ids.slice(i, i + chunk)));
            items = items.concat(JSON.parse(itemsJson));
        }

        return Promise.resolve(items || []);
    }

    function getLibraryItemsBySyncStatus(serverId, syncStati) {

        throw new Error('getLibraryItemsBySyncStatus not implemented');
    }

    function getLibraryItemsByType(serverId, itemTypes) {

        var items = AndroidLocalDatabase.getLibraryItemsByType(serverId, JSON.stringify(itemTypes || []));
        return Promise.resolve(parseJSON(items));
    }

    function getAllLibraryItems(serverId) {

        var items = AndroidLocalDatabase.getAllLibraryItems(serverId);
        return Promise.resolve(parseJSON(items));
    }

    function getLibraryItem(serverId, key) {

        var item = AndroidLocalDatabase.getLibraryItem(serverId, key);
        return Promise.resolve(parseJSON(item));
    }

    function parseJSON(items) {

        if (!items) {
            return null;
        }

        if (typeof items === 'string') {
            items = JSON.parse(items);
        }

        if (items.forEach) {
            items.forEach(function (item) {
                if (!item.Item) {
                    item.Item = JSON.parse(item.ItemJson);
                }
                delete item.ItemJson;
            });
        }
        else {
            if (!items.Item) {
                items.Item = JSON.parse(items.ItemJson);
            }
            delete items.ItemJson;
        }
        return items;
    }

    var getLibraryItemsPromise;
    window.getLibraryItemsCallback = function (response) {

        var resolve = getLibraryItemsPromise;
        if (resolve) {

            getLibraryItemsPromise = null;

            if (typeof response === 'string') {
                response = JSON.parse(response);
            }

            var items = parseJSON(response.Items);
            items = (items || []).map(function (item) {
                return item.Item;
            });

            resolve({
                Items: items,
                TotalRecordCount: response.TotalRecordCount || items.length
            });
        }
    };

    function getLibraryItems(serverId, options) {

        var searchParentId = options.ParentId;

        searchParentId = normalizeId(searchParentId);
        var seasonId = normalizeId(options.SeasonId || options.seasonId);
        var seriesId = normalizeId(options.SeriesId || options.seriesId);
        var albumIds = normalizeIdList(options.AlbumIds || options.albumIds);

        var includeItemTypes = options.IncludeItemTypes ? options.IncludeItemTypes.split(',') : [];
        var filters = options.Filters ? options.Filters.split(',') : [];
        var mediaTypes = options.MediaTypes ? options.MediaTypes.split(',') : [];

        if (updateFiltersForTopLevelView(searchParentId, mediaTypes, includeItemTypes, options)) {
            searchParentId = null;
        }

        var enableTotalRecordCount = true;
        if (options.EnableTotalRecordCount === false) {
            enableTotalRecordCount = false;
        }

        var query = {
            SearchParentId: searchParentId,
            SeasonId: seasonId,
            SeriesId: seriesId,
            AlbumIds: albumIds,
            IncludeItemTypes: includeItemTypes,
            Filters: filters,
            MediaTypes: mediaTypes,
            Recursive: options.Recursive,
            SortBy: options.SortBy,
            LocalSortBy: options.LocalSortBy,
            SortOrder: options.SortOrder,
            Limit: options.Limit,
            StartIndex: options.StartIndex,
            EnableTotalRecordCount: enableTotalRecordCount
        };

        return new Promise(function (resolve, reject) {
            AndroidLocalDatabase.getLibraryItems(serverId, JSON.stringify(query));
            getLibraryItemsPromise = resolve;
        });
    }

    function updateFiltersForTopLevelView(parentId, mediaTypes, includeItemTypes, query) {

        switch (parentId) {
            case 'MusicView':
                if (query.Recursive) {
                    includeItemTypes.push('Audio');
                } else {
                    includeItemTypes.push('MusicAlbum');
                }
                return true;
            case 'PhotosView':
                if (query.Recursive) {
                    includeItemTypes.push('Photo');
                } else {
                    includeItemTypes.push('PhotoAlbum');
                }
                return true;
            case 'TVView':
                if (query.Recursive) {
                    includeItemTypes.push('Episode');
                } else {
                    includeItemTypes.push('Series');
                }
                return true;
            case 'VideosView':
                if (query.Recursive) {
                    includeItemTypes.push('Video');
                } else {
                    includeItemTypes.push('Video');
                }
                return true;
            case 'MoviesView':
                if (query.Recursive) {
                    includeItemTypes.push('Movie');
                } else {
                    includeItemTypes.push('Movie');
                }
                return true;
            case 'MusicVideosView':
                if (query.Recursive) {
                    includeItemTypes.push('MusicVideo');
                } else {
                    includeItemTypes.push('MusicVideo');
                }
                return true;
            case 'TrailersView':
                if (query.Recursive) {
                    includeItemTypes.push('Trailer');
                } else {
                    includeItemTypes.push('Trailer');
                }
                return true;
        }

        return false;
    }

    function normalizeId(id) {

        if (id) {
            id = stripStart(id, 'localview:');
            id = stripStart(id, 'local:');
            return id;
        }

        return null;
    }

    function normalizeIdList(val) {

        if (val) {
            return val.split(',').map(normalizeId);
        }

        return [];
    }

    function stripStart(str, find) {
        if (startsWith(str, find)) {
            return str.substr(find.length);
        }

        return str;
    }

    function startsWith(str, find) {

        if (str && find && str.length > find.length) {
            if (str.indexOf(find) === 0) {
                return true;
            }
        }

        return false;
    }

    function addLibraryItem(serverId, key, val) {

        throw new Error('addLibraryItem not implemented');
    }

    function updateLibraryItem(serverId, key, val) {

        return Promise.resolve(AndroidLocalDatabase.updateLibraryItem(serverId, key, JSON.stringify(val)));
    }

    function deleteLibraryItem(serverId, itemId) {

        return Promise.resolve(AndroidLocalDatabase.deleteLibraryItem(serverId, itemId));
    }

    function clearLibrary(serverId) {

        throw new Error('clearLibrary not implemented');
    }

    return {
        getLibarytemTypes: getLibarytemTypes,
        getLibraryItemsByIds: getLibraryItemsByIds,
        getLibraryItemPathsByIds: getLibraryItemPathsByIds,
        getLibraryItemsBySyncStatus: getLibraryItemsBySyncStatus,
        getLibraryItemsByType: getLibraryItemsByType,
        getAllLibraryItems: getAllLibraryItems,
        getLibraryItem: getLibraryItem,
        getLibraryItems: getLibraryItems,
        addLibraryItem: addLibraryItem,
        updateLibraryItem: updateLibraryItem,
        deleteLibraryItem: deleteLibraryItem,
        clearLibrary: clearLibrary
    };
});