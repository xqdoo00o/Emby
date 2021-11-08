define([], function () {
    'use strict';

    function getValidFileName(path) {

        return AndroidFileRepository.getValidFileName(path);
    }

    function getFullMetadataPath(pathArray, checkLegacyPath) {

        return AndroidFileRepository.getFullPath(pathArray.join('##'), true, true, checkLegacyPath === true);
    }

    function getFullLocalPath(pathArray) {

        return AndroidFileRepository.getFullPath(pathArray.join('##'), true, false, false);
    }

    function deleteFile(path) {

        try {
            AndroidFileRepository.deleteFile(path);
            return Promise.resolve();
        }
        catch (err) {
            return Promise.reject(err);
        }
    }

    function deleteDirectory(path) {
        try {
            AndroidFileRepository.deleteDirectory(path);
            return Promise.resolve();
        }
        catch (err) {
            return Promise.reject(err);
        }
    }

    function fileExists(path) {
        return Promise.resolve(AndroidFileRepository.fileExists(path));
    }

    function getItemFileSize(path) {
        var size = AndroidFileRepository.getItemFileSize(path);
        return Promise.resolve(size);
    }

    function getImageUrl(pathParts) {
        return 'file://' + getFullMetadataPath(pathParts, true);
    }

    function getParentPath(path) {

        return AndroidFileRepository.getParentPath(path);
    }

    function combinePath(path1, path2) {

        return AndroidFileRepository.combinePath(path1, path2);
    }

    return {
        getValidFileName: getValidFileName,
        deleteFile: deleteFile,
        deleteDirectory: deleteDirectory,
        fileExists: fileExists,
        getItemFileSize: getItemFileSize,
        getImageUrl: getImageUrl,
        getFullMetadataPath: getFullMetadataPath,
        getFullLocalPath: getFullLocalPath,
        getParentPath: getParentPath,
        combinePath: combinePath,
    };
});