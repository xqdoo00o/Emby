.class public Lcom/mb/android/model/dto/BaseItemDto;
.super Ljava/lang/Object;
.source "BaseItemDto.java"


# instance fields
.field private AbsoluteEpisodeNumber:Ljava/lang/Integer;

.field private AirDays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private AirTime:Ljava/lang/String;

.field private AirsAfterSeasonNumber:Ljava/lang/Integer;

.field private AirsBeforeEpisodeNumber:Ljava/lang/Integer;

.field private AirsBeforeSeasonNumber:Ljava/lang/Integer;

.field private Album:Ljava/lang/String;

.field private AlbumArtist:Ljava/lang/String;

.field private AlbumArtists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/dto/NameIdPair;",
            ">;"
        }
    .end annotation
.end field

.field private AlbumCount:Ljava/lang/Integer;

.field private AlbumId:Ljava/lang/String;

.field private AlbumPrimaryImageTag:Ljava/lang/String;

.field private Altitude:Ljava/lang/Double;

.field private AnimeSeriesIndex:Ljava/lang/Integer;

.field private Aperture:Ljava/lang/Double;

.field private ArtistCount:Ljava/lang/Integer;

.field private ArtistItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/dto/NameIdPair;",
            ">;"
        }
    .end annotation
.end field

.field private Artists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private AspectRatio:Ljava/lang/String;

.field private AwardSummary:Ljava/lang/String;

.field private BackdropImageTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Budget:Ljava/lang/Double;

.field private CameraMake:Ljava/lang/String;

.field private CameraModel:Ljava/lang/String;

.field private CanDelete:Ljava/lang/Boolean;

.field private CanDownload:Ljava/lang/Boolean;

.field private ChannelId:Ljava/lang/String;

.field private ChannelName:Ljava/lang/String;

.field private ChannelNumber:Ljava/lang/String;

.field private ChannelPrimaryImageTag:Ljava/lang/String;

.field private ChildCount:Ljava/lang/Integer;

.field private CollectionType:Ljava/lang/String;

.field private CommunityRating:Ljava/lang/Float;

.field private CompletionPercentage:Ljava/lang/Double;

.field private Container:Ljava/lang/String;

.field private CriticRating:Ljava/lang/Float;

.field private CriticRatingSummary:Ljava/lang/String;

.field private CumulativeRunTimeTicks:Ljava/lang/Long;

.field private CurrentProgram:Lcom/mb/android/model/dto/BaseItemDto;

.field private CustomRating:Ljava/lang/String;

.field private DateCreated:Ljava/util/Date;

.field private DateLastMediaAdded:Ljava/util/Date;

.field private DisplayMediaType:Ljava/lang/String;

.field private DisplayOrder:Ljava/lang/String;

.field private DisplayPreferencesId:Ljava/lang/String;

.field private DisplaySpecialsWithSeasons:Ljava/lang/Boolean;

.field private DvdEpisodeNumber:Ljava/lang/Float;

.field private DvdSeasonNumber:Ljava/lang/Integer;

.field private EndDate:Ljava/util/Date;

.field private EpisodeCount:Ljava/lang/Integer;

.field private EpisodeTitle:Ljava/lang/String;

.field private Etag:Ljava/lang/String;

.field private ExposureTime:Ljava/lang/Double;

.field private FocalLength:Ljava/lang/Double;

.field private ForcedSortName:Ljava/lang/String;

.field private GameCount:Ljava/lang/Integer;

.field private GameSystem:Ljava/lang/String;

.field private Genres:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private HasDynamicCategories:Ljava/lang/Boolean;

.field private HasSubtitles:Ljava/lang/Boolean;

.field private HasSyncJob:Ljava/lang/Boolean;

.field private Height:Ljava/lang/Integer;

.field private HomePageUrl:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private ImageTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/mb/android/model/entities/ImageType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private IndexNumber:Ljava/lang/Integer;

.field private IndexNumberEnd:Ljava/lang/Integer;

.field private IndexOptions:[Ljava/lang/String;

.field private IsFolder:Ljava/lang/Boolean;

.field private IsHD:Ljava/lang/Boolean;

.field private IsKids:Ljava/lang/Boolean;

.field private IsLive:Ljava/lang/Boolean;

.field private IsMovie:Ljava/lang/Boolean;

.field private IsNews:Ljava/lang/Boolean;

.field private IsPlaceHolder:Ljava/lang/Boolean;

.field private IsPremiere:Ljava/lang/Boolean;

.field private IsRepeat:Ljava/lang/Boolean;

.field private IsSeries:Ljava/lang/Boolean;

.field private IsSports:Ljava/lang/Boolean;

.field private IsSynced:Ljava/lang/Boolean;

.field private IsoSpeedRating:Ljava/lang/Integer;

.field private Keywords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Latitude:Ljava/lang/Double;

.field private LocalChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field private LocalTrailerCount:Ljava/lang/Integer;

.field private LockData:Ljava/lang/Boolean;

.field private Longitude:Ljava/lang/Double;

.field private MediaSourceCount:Ljava/lang/Integer;

.field private MediaSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/MediaSourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private MediaStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/entities/MediaStream;",
            ">;"
        }
    .end annotation
.end field

.field private MediaType:Ljava/lang/String;

.field private Metascore:Ljava/lang/Float;

.field private MovieCount:Ljava/lang/Integer;

.field private MultiPartGameFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private MusicVideoCount:Ljava/lang/Integer;

.field private Name:Ljava/lang/String;

.field private Number:Ljava/lang/String;

.field private OfficialRating:Ljava/lang/String;

.field private OriginalCollectionType:Ljava/lang/String;

.field private OriginalRunTimeTicks:Ljava/lang/Long;

.field private OriginalTitle:Ljava/lang/String;

.field private Overview:Ljava/lang/String;

.field private ParentArtImageTag:Ljava/lang/String;

.field private ParentArtItemId:Ljava/lang/String;

.field private ParentBackdropImageTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ParentBackdropItemId:Ljava/lang/String;

.field private ParentId:Ljava/lang/String;

.field private ParentIndexNumber:Ljava/lang/Integer;

.field private ParentLogoImageTag:Ljava/lang/String;

.field private ParentLogoItemId:Ljava/lang/String;

.field private ParentPrimaryImageItemId:Ljava/lang/String;

.field private ParentPrimaryImageTag:Ljava/lang/String;

.field private ParentThumbImageTag:Ljava/lang/String;

.field private ParentThumbItemId:Ljava/lang/String;

.field private PartCount:Ljava/lang/Integer;

.field private Path:Ljava/lang/String;

.field private Players:Ljava/lang/Integer;

.field private PlaylistItemId:Ljava/lang/String;

.field private PreferredMetadataCountryCode:Ljava/lang/String;

.field private PreferredMetadataLanguage:Ljava/lang/String;

.field private PremiereDate:Ljava/util/Date;

.field private PrimaryImageAspectRatio:Ljava/lang/Double;

.field private ProductionLocations:[Ljava/lang/String;

.field private ProductionYear:Ljava/lang/Integer;

.field private ProgramCount:Ljava/lang/Integer;

.field private ProgramId:Ljava/lang/String;

.field private ProviderIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private RecordingCount:Ljava/lang/Integer;

.field private RecursiveItemCount:Ljava/lang/Integer;

.field private Revenue:Ljava/lang/Double;

.field private RunTimeTicks:Ljava/lang/Long;

.field private ScreenshotImageTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SeasonId:Ljava/lang/String;

.field private SeasonName:Ljava/lang/String;

.field private SeriesCount:Ljava/lang/Integer;

.field private SeriesGenres:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SeriesId:Ljava/lang/String;

.field private SeriesName:Ljava/lang/String;

.field private SeriesPrimaryImageTag:Ljava/lang/String;

.field private SeriesStudio:Ljava/lang/String;

.field private SeriesThumbImageTag:Ljava/lang/String;

.field private SeriesTimerId:Ljava/lang/String;

.field private ServerId:Ljava/lang/String;

.field private ServiceName:Ljava/lang/String;

.field private ShareUrl:Ljava/lang/String;

.field private ShortOverview:Ljava/lang/String;

.field private ShutterSpeed:Ljava/lang/Double;

.field private Software:Ljava/lang/String;

.field private SongCount:Ljava/lang/Integer;

.field private SortName:Ljava/lang/String;

.field private SoundtrackIds:[Ljava/lang/String;

.field private SourceType:Ljava/lang/String;

.field private SpecialFeatureCount:Ljava/lang/Integer;

.field private StartDate:Ljava/util/Date;

.field private Status:Ljava/lang/String;

.field private SupportsSync:Ljava/lang/Boolean;

.field private SyncPercent:Ljava/lang/Double;

.field private Taglines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private TimerId:Ljava/lang/String;

.field private TrailerCount:Ljava/lang/Integer;

.field private Type:Ljava/lang/String;

.field private UserData:Lcom/mb/android/model/dto/UserItemDataDto;

.field private VoteCount:Ljava/lang/Integer;

.field private Width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->DateCreated:Ljava/util/Date;

    .line 132
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->DateLastMediaAdded:Ljava/util/Date;

    .line 142
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AirsBeforeSeasonNumber:Ljava/lang/Integer;

    .line 151
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AirsAfterSeasonNumber:Ljava/lang/Integer;

    .line 160
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AirsBeforeEpisodeNumber:Ljava/lang/Integer;

    .line 169
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AbsoluteEpisodeNumber:Ljava/lang/Integer;

    .line 178
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->DisplaySpecialsWithSeasons:Ljava/lang/Boolean;

    .line 187
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CanDelete:Ljava/lang/Boolean;

    .line 196
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CanDownload:Ljava/lang/Boolean;

    .line 206
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->HasSubtitles:Ljava/lang/Boolean;

    .line 254
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Metascore:Ljava/lang/Float;

    .line 263
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->HasDynamicCategories:Ljava/lang/Boolean;

    .line 273
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AnimeSeriesIndex:Ljava/lang/Integer;

    .line 288
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SupportsSync:Ljava/lang/Boolean;

    .line 302
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->HasSyncJob:Ljava/lang/Boolean;

    .line 316
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsSynced:Ljava/lang/Boolean;

    .line 331
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SyncPercent:Ljava/lang/Double;

    .line 356
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->DvdSeasonNumber:Ljava/lang/Integer;

    .line 370
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->DvdEpisodeNumber:Ljava/lang/Float;

    .line 409
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->PremiereDate:Ljava/util/Date;

    .line 439
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CriticRating:Ljava/lang/Float;

    .line 657
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CommunityRating:Ljava/lang/Float;

    .line 672
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->VoteCount:Ljava/lang/Integer;

    .line 687
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CumulativeRunTimeTicks:Ljava/lang/Long;

    .line 702
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->OriginalRunTimeTicks:Ljava/lang/Long;

    .line 717
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->RunTimeTicks:Ljava/lang/Long;

    .line 747
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ProductionYear:Ljava/lang/Integer;

    .line 762
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Players:Ljava/lang/Integer;

    .line 777
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsPlaceHolder:Ljava/lang/Boolean;

    .line 816
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IndexNumber:Ljava/lang/Integer;

    .line 831
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IndexNumberEnd:Ljava/lang/Integer;

    .line 846
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentIndexNumber:Ljava/lang/Integer;

    .line 891
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsHD:Ljava/lang/Boolean;

    .line 906
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsFolder:Ljava/lang/Boolean;

    .line 1004
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->LocalTrailerCount:Ljava/lang/Integer;

    .line 1034
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->RecursiveItemCount:Ljava/lang/Integer;

    .line 1049
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ChildCount:Ljava/lang/Integer;

    .line 1109
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SpecialFeatureCount:Ljava/lang/Integer;

    .line 1229
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->PrimaryImageAspectRatio:Ljava/lang/Double;

    .line 1453
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->PartCount:Ljava/lang/Integer;

    .line 1462
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->MediaSourceCount:Ljava/lang/Integer;

    .line 1706
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->EndDate:Ljava/util/Date;

    .line 1736
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Budget:Ljava/lang/Double;

    .line 1751
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Revenue:Ljava/lang/Double;

    .line 1766
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->TrailerCount:Ljava/lang/Integer;

    .line 1780
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->MovieCount:Ljava/lang/Integer;

    .line 1794
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesCount:Ljava/lang/Integer;

    .line 1803
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ProgramCount:Ljava/lang/Integer;

    .line 1817
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->EpisodeCount:Ljava/lang/Integer;

    .line 1831
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->GameCount:Ljava/lang/Integer;

    .line 1845
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SongCount:Ljava/lang/Integer;

    .line 1859
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AlbumCount:Ljava/lang/Integer;

    .line 1868
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ArtistCount:Ljava/lang/Integer;

    .line 1882
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->MusicVideoCount:Ljava/lang/Integer;

    .line 1897
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->LockData:Ljava/lang/Boolean;

    .line 1907
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Width:Ljava/lang/Integer;

    .line 1916
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Height:Ljava/lang/Integer;

    .line 1952
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ExposureTime:Ljava/lang/Double;

    .line 1961
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->FocalLength:Ljava/lang/Double;

    .line 1970
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Aperture:Ljava/lang/Double;

    .line 1979
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ShutterSpeed:Ljava/lang/Double;

    .line 1988
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Latitude:Ljava/lang/Double;

    .line 1997
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Longitude:Ljava/lang/Double;

    .line 2006
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Altitude:Ljava/lang/Double;

    .line 2015
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsoSpeedRating:Ljava/lang/Integer;

    .line 2028
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->RecordingCount:Ljava/lang/Integer;

    .line 2303
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->StartDate:Ljava/util/Date;

    .line 2318
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CompletionPercentage:Ljava/lang/Double;

    .line 2333
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsRepeat:Ljava/lang/Boolean;

    .line 2363
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsMovie:Ljava/lang/Boolean;

    .line 2378
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsSports:Ljava/lang/Boolean;

    .line 2393
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsSeries:Ljava/lang/Boolean;

    .line 2408
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsLive:Ljava/lang/Boolean;

    .line 2423
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsNews:Ljava/lang/Boolean;

    .line 2438
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsKids:Ljava/lang/Boolean;

    .line 2453
    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsPremiere:Ljava/lang/Boolean;

    .line 2492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->LocalChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final IsType(Ljava/lang/Class;)Z
    .locals 0

    .line 1480
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mb/android/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final IsType(Ljava/lang/String;)Z
    .locals 1

    .line 1503
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final getAbsoluteEpisodeNumber()Ljava/lang/Integer;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AbsoluteEpisodeNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAirDays()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1172
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AirDays:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAirTime()Ljava/lang/String;
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AirTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getAirsAfterSeasonNumber()Ljava/lang/Integer;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AirsAfterSeasonNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAirsBeforeEpisodeNumber()Ljava/lang/Integer;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AirsBeforeEpisodeNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAirsBeforeSeasonNumber()Ljava/lang/Integer;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AirsBeforeSeasonNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAlbum()Ljava/lang/String;
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Album:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumArtist()Ljava/lang/String;
    .locals 1

    .line 1381
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AlbumArtist:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumArtists()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/dto/NameIdPair;",
            ">;"
        }
    .end annotation

    .line 1396
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AlbumArtists:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAlbumCount()Ljava/lang/Integer;
    .locals 1

    .line 1862
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AlbumCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAlbumId()Ljava/lang/String;
    .locals 1

    .line 1337
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AlbumPrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getAltitude()Ljava/lang/Double;
    .locals 1

    .line 2009
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Altitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getAnimeSeriesIndex()Ljava/lang/Integer;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AnimeSeriesIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAperture()Ljava/lang/Double;
    .locals 1

    .line 1973
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Aperture:Ljava/lang/Double;

    return-object v0
.end method

.method public final getArtistCount()Ljava/lang/Integer;
    .locals 1

    .line 1871
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ArtistCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getArtistItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/dto/NameIdPair;",
            ">;"
        }
    .end annotation

    .line 1262
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ArtistItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getArtists()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1247
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Artists:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAspectRatio()Ljava/lang/String;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AspectRatio:Ljava/lang/String;

    return-object v0
.end method

.method public final getAwardSummary()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->AwardSummary:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackdropCount()I
    .locals 1

    .line 2062
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getBackdropImageTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1529
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->BackdropImageTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getBudget()Ljava/lang/Double;
    .locals 1

    .line 1739
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Budget:Ljava/lang/Double;

    return-object v0
.end method

.method public final getCameraMake()Ljava/lang/String;
    .locals 1

    .line 1928
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CameraMake:Ljava/lang/String;

    return-object v0
.end method

.method public final getCameraModel()Ljava/lang/String;
    .locals 1

    .line 1937
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CameraModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanDelete()Ljava/lang/Boolean;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CanDelete:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanDownload()Ljava/lang/Boolean;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CanDownload:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelName()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelNumber()Ljava/lang/String;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ChannelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 2293
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ChannelPrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getChildCount()Ljava/lang/Integer;
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ChildCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCollectionType()Ljava/lang/String;
    .locals 1

    .line 1292
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CollectionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getCommunityRating()Ljava/lang/Float;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CommunityRating:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCompletionPercentage()Ljava/lang/Double;
    .locals 1

    .line 2321
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CompletionPercentage:Ljava/lang/Double;

    return-object v0
.end method

.method public final getContainer()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Container:Ljava/lang/String;

    return-object v0
.end method

.method public final getCriticRating()Ljava/lang/Float;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CriticRating:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCriticRatingSummary()Ljava/lang/String;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CriticRatingSummary:Ljava/lang/String;

    return-object v0
.end method

.method public final getCumulativeRunTimeTicks()Ljava/lang/Long;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CumulativeRunTimeTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getCurrentProgram()Lcom/mb/android/model/dto/BaseItemDto;
    .locals 1

    .line 2485
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CurrentProgram:Lcom/mb/android/model/dto/BaseItemDto;

    return-object v0
.end method

.method public final getCustomRating()Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->CustomRating:Ljava/lang/String;

    return-object v0
.end method

.method public final getDateCreated()Ljava/util/Date;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->DateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public final getDateLastMediaAdded()Ljava/util/Date;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->DateLastMediaAdded:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 2501
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2502
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2504
    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2505
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final getDisplayMediaType()Ljava/lang/String;
    .locals 1

    .line 1441
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->DisplayMediaType:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayOrder()Ljava/lang/String;
    .locals 1

    .line 1322
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->DisplayOrder:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayPreferencesId()Ljava/lang/String;
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->DisplayPreferencesId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplaySpecialsWithSeasons()Ljava/lang/Boolean;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->DisplaySpecialsWithSeasons:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getDvdEpisodeNumber()Ljava/lang/Float;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->DvdEpisodeNumber:Ljava/lang/Float;

    return-object v0
.end method

.method public final getDvdSeasonNumber()Ljava/lang/Integer;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->DvdSeasonNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEndDate()Ljava/util/Date;
    .locals 1

    .line 1709
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->EndDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getEpisodeCount()Ljava/lang/Integer;
    .locals 1

    .line 1820
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->EpisodeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEpisodeTitle()Ljava/lang/String;
    .locals 1

    .line 2351
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->EpisodeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getExposureTime()Ljava/lang/Double;
    .locals 1

    .line 1955
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ExposureTime:Ljava/lang/Double;

    return-object v0
.end method

.method public final getFocalLength()Ljava/lang/Double;
    .locals 1

    .line 1964
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->FocalLength:Ljava/lang/Double;

    return-object v0
.end method

.method public final getForcedSortName()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ForcedSortName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 6

    .line 2511
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x3caabb6

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x72a55db

    if-eq v1, v2, :cond_1

    const v2, 0x46a98b6a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "MusicAlbum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v1, "Episode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "Audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, ""

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_4

    .line 2521
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2519
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/model/dto/NameIdPair;

    invoke-virtual {v2}, Lcom/mb/android/model/dto/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2513
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2514
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, v1

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2515
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getIndexNumberEnd()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getIndexNumberEnd()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGameCount()Ljava/lang/Integer;
    .locals 1

    .line 1834
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->GameCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getGameSystem()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->GameSystem:Ljava/lang/String;

    return-object v0
.end method

.method public final getGenres()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Genres:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getHasArtImage()Z
    .locals 2

    .line 2098
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Art:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasBackdrop()Z
    .locals 1

    .line 2134
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasBanner()Z
    .locals 2

    .line 2086
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Banner:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasBoxImage()Z
    .locals 2

    .line 2170
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Box:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasBoxRearImage()Z
    .locals 2

    .line 2182
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->BoxRear:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasDiscImage()Z
    .locals 2

    .line 2158
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Disc:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasDynamicCategories()Ljava/lang/Boolean;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->HasDynamicCategories:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHasLogo()Z
    .locals 2

    .line 2110
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Logo:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasMenuImage()Z
    .locals 2

    .line 2194
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Menu:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasPrimaryImage()Z
    .locals 2

    .line 2146
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Primary:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasSubtitles()Ljava/lang/Boolean;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->HasSubtitles:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHasSyncJob()Ljava/lang/Boolean;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->HasSyncJob:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHasThumb()Z
    .locals 2

    .line 2122
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Thumb:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1

    .line 1919
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHomePageUrl()Ljava/lang/String;
    .locals 1

    .line 1724
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->HomePageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageTags()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/mb/android/model/entities/ImageType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1514
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ImageTags:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getIndexNumber()Ljava/lang/Integer;
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IndexNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIndexNumberEnd()Ljava/lang/Integer;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IndexNumberEnd:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIndexOptions()[Ljava/lang/String;
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IndexOptions:[Ljava/lang/String;

    return-object v0
.end method

.method public final getIsAlbum()Z
    .locals 2

    .line 2253
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAlbum"

    invoke-static {v0, v1}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsArtist()Z
    .locals 2

    .line 2246
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicArtist"

    invoke-static {v0, v1}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsFolder()Ljava/lang/Boolean;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsFolder:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsFolderItem()Z
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getIsGameGenre()Z
    .locals 2

    .line 2232
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameGenre"

    invoke-static {v0, v1}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsGenre()Z
    .locals 2

    .line 2239
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Genre"

    invoke-static {v0, v1}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsHD()Ljava/lang/Boolean;
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsHD:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsKids()Ljava/lang/Boolean;
    .locals 1

    .line 2441
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsKids:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsLive()Ljava/lang/Boolean;
    .locals 1

    .line 2411
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsLive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsMovie()Ljava/lang/Boolean;
    .locals 1

    .line 2366
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsMovie:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsMusicGenre()Z
    .locals 2

    .line 2225
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicGenre"

    invoke-static {v0, v1}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsNews()Ljava/lang/Boolean;
    .locals 1

    .line 2426
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsNews:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsPerson()Z
    .locals 2

    .line 2206
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Person"

    invoke-static {v0, v1}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsPlaceHolder()Ljava/lang/Boolean;
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsPlaceHolder:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsPremiere()Ljava/lang/Boolean;
    .locals 1

    .line 2456
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsPremiere:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsRepeat()Ljava/lang/Boolean;
    .locals 1

    .line 2336
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsRepeat:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsRoot()Z
    .locals 2

    .line 2218
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AggregateFolder"

    invoke-static {v0, v1}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsSeries()Ljava/lang/Boolean;
    .locals 1

    .line 2396
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsSeries:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsSports()Ljava/lang/Boolean;
    .locals 1

    .line 2381
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsSports:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsStudio()Z
    .locals 2

    .line 2260
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Studio"

    invoke-static {v0, v1}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsSynced()Ljava/lang/Boolean;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsSynced:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsoSpeedRating()Ljava/lang/Integer;
    .locals 1

    .line 2018
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsoSpeedRating:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getKeywords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1217
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Keywords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getLatitude()Ljava/lang/Double;
    .locals 1

    .line 1991
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLocalChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation

    .line 2494
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->LocalChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getLocalTrailerCount()Ljava/lang/Integer;
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->LocalTrailerCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLockData()Ljava/lang/Boolean;
    .locals 1

    .line 1900
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->LockData:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLongitude()Ljava/lang/Double;
    .locals 1

    .line 2000
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 2

    .line 2526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaSourceCount()Ljava/lang/Integer;
    .locals 1

    .line 1465
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->MediaSourceCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMediaSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/MediaSourceInfo;",
            ">;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->MediaSources:Ljava/util/List;

    return-object v0
.end method

.method public final getMediaStreams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/entities/MediaStream;",
            ">;"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->MediaStreams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMediaType()Ljava/lang/String;
    .locals 1

    .line 1694
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->MediaType:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetascore()Ljava/lang/Float;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Metascore:Ljava/lang/Float;

    return-object v0
.end method

.method public final getMovieCount()Ljava/lang/Integer;
    .locals 1

    .line 1783
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->MovieCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMultiPartGameFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->MultiPartGameFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMusicVideoCount()Ljava/lang/Integer;
    .locals 1

    .line 1885
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->MusicVideoCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumber()Ljava/lang/String;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Number:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfficialRating()Ljava/lang/String;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->OfficialRating:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalCollectionType()Ljava/lang/String;
    .locals 1

    .line 1307
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->OriginalCollectionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalRunTimeTicks()Ljava/lang/Long;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->OriginalRunTimeTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOriginalTitle()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->OriginalTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getOverview()Ljava/lang/String;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Overview:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentArtImageTag()Ljava/lang/String;
    .locals 1

    .line 1589
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentArtImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentArtItemId()Ljava/lang/String;
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentArtItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentBackdropImageTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 992
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentBackdropImageTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getParentBackdropItemId()Ljava/lang/String;
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentBackdropItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentIndexNumber()Ljava/lang/Integer;
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentIndexNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getParentLogoImageTag()Ljava/lang/String;
    .locals 1

    .line 1559
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentLogoImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentLogoItemId()Ljava/lang/String;
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentLogoItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentPrimaryImageItemId()Ljava/lang/String;
    .locals 1

    .line 1664
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentPrimaryImageItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 1679
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentPrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentThumbImageTag()Ljava/lang/String;
    .locals 1

    .line 1649
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentThumbImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentThumbItemId()Ljava/lang/String;
    .locals 1

    .line 1634
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentThumbItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPartCount()Ljava/lang/Integer;
    .locals 1

    .line 1456
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->PartCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayers()Ljava/lang/Integer;
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Players:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPlaylistItemId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->PlaylistItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreferredMetadataCountryCode()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->PreferredMetadataCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreferredMetadataLanguage()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->PreferredMetadataLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getPremiereDate()Ljava/util/Date;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->PremiereDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getPrimaryImageAspectRatio()Ljava/lang/Double;
    .locals 1

    .line 1232
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->PrimaryImageAspectRatio:Ljava/lang/Double;

    return-object v0
.end method

.method public final getProductionLocations()[Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ProductionLocations:[Ljava/lang/String;

    return-object v0
.end method

.method public final getProductionYear()Ljava/lang/Integer;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ProductionYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getProgramCount()Ljava/lang/Integer;
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ProgramCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getProgramId()Ljava/lang/String;
    .locals 1

    .line 2278
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ProgramId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProviderIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 879
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ProviderIds:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getRecordingCount()Ljava/lang/Integer;
    .locals 1

    .line 2031
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->RecordingCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRecursiveItemCount()Ljava/lang/Integer;
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->RecursiveItemCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRevenue()Ljava/lang/Double;
    .locals 1

    .line 1754
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Revenue:Ljava/lang/Double;

    return-object v0
.end method

.method public final getRunTimeTicks()Ljava/lang/Long;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->RunTimeTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getScreenshotCount()I
    .locals 1

    .line 2074
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getScreenshotImageTags()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getScreenshotImageTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getScreenshotImageTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1544
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ScreenshotImageTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSeasonId()Ljava/lang/String;
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeasonId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeasonName()Ljava/lang/String;
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeasonName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesCount()Ljava/lang/Integer;
    .locals 1

    .line 1797
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSeriesGenres()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesGenres:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSeriesId()Ljava/lang/String;
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesName()Ljava/lang/String;
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 1366
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesPrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesStudio()Ljava/lang/String;
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesStudio:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesThumbImageTag()Ljava/lang/String;
    .locals 1

    .line 1604
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesThumbImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesTimerId()Ljava/lang/String;
    .locals 1

    .line 2046
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesTimerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ServerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getShareUrl()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortOverview()Ljava/lang/String;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ShortOverview:Ljava/lang/String;

    return-object v0
.end method

.method public final getShutterSpeed()Ljava/lang/Double;
    .locals 1

    .line 1982
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->ShutterSpeed:Ljava/lang/Double;

    return-object v0
.end method

.method public final getSoftware()Ljava/lang/String;
    .locals 1

    .line 1946
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Software:Ljava/lang/String;

    return-object v0
.end method

.method public final getSongCount()Ljava/lang/Integer;
    .locals 1

    .line 1848
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SongCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSortName()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SortName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSoundtrackIds()[Ljava/lang/String;
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SoundtrackIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceType()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SourceType:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpecialFeatureCount()Ljava/lang/Integer;
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SpecialFeatureCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartDate()Ljava/util/Date;
    .locals 1

    .line 2306
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->StartDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Status:Ljava/lang/String;

    return-object v0
.end method

.method public final getSupportsPlaylists()Z
    .locals 1

    .line 1492
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getIsFolderItem()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getIsGenre()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getIsMusicGenre()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getIsArtist()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getSupportsSimilarItems()Z
    .locals 1

    const-string v0, "Movie"

    .line 2267
    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Series"

    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MusicAlbum"

    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MusicArtist"

    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Program"

    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Recording"

    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ChannelVideoItem"

    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Game"

    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getSupportsSync()Ljava/lang/Boolean;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SupportsSync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSyncPercent()Ljava/lang/Double;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->SyncPercent:Ljava/lang/Double;

    return-object v0
.end method

.method public final getTaglines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Taglines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Tags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTimerId()Ljava/lang/String;
    .locals 1

    .line 2471
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->TimerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrailerCount()Ljava/lang/Integer;
    .locals 1

    .line 1769
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->TrailerCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserData()Lcom/mb/android/model/dto/UserItemDataDto;
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->UserData:Lcom/mb/android/model/dto/UserItemDataDto;

    return-object v0
.end method

.method public final getVoteCount()Ljava/lang/Integer;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->VoteCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1

    .line 1910
    iget-object v0, p0, Lcom/mb/android/model/dto/BaseItemDto;->Width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAbsoluteEpisodeNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AbsoluteEpisodeNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setAirDays(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1176
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AirDays:Ljava/util/ArrayList;

    return-void
.end method

.method public final setAirTime(Ljava/lang/String;)V
    .locals 0

    .line 1161
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AirTime:Ljava/lang/String;

    return-void
.end method

.method public final setAirsAfterSeasonNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AirsAfterSeasonNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setAirsBeforeEpisodeNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AirsBeforeEpisodeNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setAirsBeforeSeasonNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AirsBeforeSeasonNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 1281
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Album:Ljava/lang/String;

    return-void
.end method

.method public final setAlbumArtist(Ljava/lang/String;)V
    .locals 0

    .line 1385
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AlbumArtist:Ljava/lang/String;

    return-void
.end method

.method public final setAlbumArtists(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/dto/NameIdPair;",
            ">;)V"
        }
    .end annotation

    .line 1400
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AlbumArtists:Ljava/util/ArrayList;

    return-void
.end method

.method public final setAlbumCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1866
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AlbumCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AlbumId:Ljava/lang/String;

    return-void
.end method

.method public final setAlbumPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1355
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AlbumPrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setAltitude(Ljava/lang/Double;)V
    .locals 0

    .line 2013
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Altitude:Ljava/lang/Double;

    return-void
.end method

.method public final setAnimeSeriesIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AnimeSeriesIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setAperture(Ljava/lang/Double;)V
    .locals 0

    .line 1977
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Aperture:Ljava/lang/Double;

    return-void
.end method

.method public final setArtistCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1875
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ArtistCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setArtistItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/dto/NameIdPair;",
            ">;)V"
        }
    .end annotation

    .line 1266
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ArtistItems:Ljava/util/ArrayList;

    return-void
.end method

.method public final setArtists(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1251
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Artists:Ljava/util/ArrayList;

    return-void
.end method

.method public final setAspectRatio(Ljava/lang/String;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AspectRatio:Ljava/lang/String;

    return-void
.end method

.method public final setAwardSummary(Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->AwardSummary:Ljava/lang/String;

    return-void
.end method

.method public final setBackdropImageTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1533
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->BackdropImageTags:Ljava/util/ArrayList;

    return-void
.end method

.method public final setBudget(Ljava/lang/Double;)V
    .locals 0

    .line 1743
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Budget:Ljava/lang/Double;

    return-void
.end method

.method public final setCameraMake(Ljava/lang/String;)V
    .locals 0

    .line 1932
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->CameraMake:Ljava/lang/String;

    return-void
.end method

.method public final setCameraModel(Ljava/lang/String;)V
    .locals 0

    .line 1941
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->CameraModel:Ljava/lang/String;

    return-void
.end method

.method public final setCanDelete(Ljava/lang/Boolean;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->CanDelete:Ljava/lang/Boolean;

    return-void
.end method

.method public final setCanDownload(Ljava/lang/Boolean;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->CanDownload:Ljava/lang/Boolean;

    return-void
.end method

.method public final setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ChannelId:Ljava/lang/String;

    return-void
.end method

.method public final setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ChannelName:Ljava/lang/String;

    return-void
.end method

.method public final setChannelNumber(Ljava/lang/String;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ChannelNumber:Ljava/lang/String;

    return-void
.end method

.method public final setChannelPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 2297
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ChannelPrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setChildCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ChildCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setCollectionType(Ljava/lang/String;)V
    .locals 0

    .line 1296
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->CollectionType:Ljava/lang/String;

    return-void
.end method

.method public final setCommunityRating(Ljava/lang/Float;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->CommunityRating:Ljava/lang/Float;

    return-void
.end method

.method public final setCompletionPercentage(Ljava/lang/Double;)V
    .locals 0

    .line 2325
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->CompletionPercentage:Ljava/lang/Double;

    return-void
.end method

.method public final setContainer(Ljava/lang/String;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Container:Ljava/lang/String;

    return-void
.end method

.method public final setCriticRating(Ljava/lang/Float;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->CriticRating:Ljava/lang/Float;

    return-void
.end method

.method public final setCriticRatingSummary(Ljava/lang/String;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->CriticRatingSummary:Ljava/lang/String;

    return-void
.end method

.method public final setCumulativeRunTimeTicks(Ljava/lang/Long;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->CumulativeRunTimeTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setCurrentProgram(Lcom/mb/android/model/dto/BaseItemDto;)V
    .locals 0

    .line 2489
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->CurrentProgram:Lcom/mb/android/model/dto/BaseItemDto;

    return-void
.end method

.method public final setCustomRating(Ljava/lang/String;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->CustomRating:Ljava/lang/String;

    return-void
.end method

.method public final setDateCreated(Ljava/util/Date;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->DateCreated:Ljava/util/Date;

    return-void
.end method

.method public final setDateLastMediaAdded(Ljava/util/Date;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->DateLastMediaAdded:Ljava/util/Date;

    return-void
.end method

.method public final setDisplayMediaType(Ljava/lang/String;)V
    .locals 0

    .line 1445
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->DisplayMediaType:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayOrder(Ljava/lang/String;)V
    .locals 0

    .line 1326
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->DisplayOrder:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayPreferencesId(Ljava/lang/String;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->DisplayPreferencesId:Ljava/lang/String;

    return-void
.end method

.method public final setDisplaySpecialsWithSeasons(Ljava/lang/Boolean;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->DisplaySpecialsWithSeasons:Ljava/lang/Boolean;

    return-void
.end method

.method public final setDvdEpisodeNumber(Ljava/lang/Float;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->DvdEpisodeNumber:Ljava/lang/Float;

    return-void
.end method

.method public final setDvdSeasonNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->DvdSeasonNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setEndDate(Ljava/util/Date;)V
    .locals 0

    .line 1713
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->EndDate:Ljava/util/Date;

    return-void
.end method

.method public final setEpisodeCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1824
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->EpisodeCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setEpisodeTitle(Ljava/lang/String;)V
    .locals 0

    .line 2355
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->EpisodeTitle:Ljava/lang/String;

    return-void
.end method

.method public final setEtag(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Etag:Ljava/lang/String;

    return-void
.end method

.method public final setExposureTime(Ljava/lang/Double;)V
    .locals 0

    .line 1959
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ExposureTime:Ljava/lang/Double;

    return-void
.end method

.method public final setFocalLength(Ljava/lang/Double;)V
    .locals 0

    .line 1968
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->FocalLength:Ljava/lang/Double;

    return-void
.end method

.method public final setForcedSortName(Ljava/lang/String;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ForcedSortName:Ljava/lang/String;

    return-void
.end method

.method public final setGameCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1838
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->GameCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setGameSystem(Ljava/lang/String;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->GameSystem:Ljava/lang/String;

    return-void
.end method

.method public final setGenres(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 634
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Genres:Ljava/util/ArrayList;

    return-void
.end method

.method public final setHasDynamicCategories(Ljava/lang/Boolean;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->HasDynamicCategories:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHasSubtitles(Ljava/lang/Boolean;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->HasSubtitles:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHasSyncJob(Ljava/lang/Boolean;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->HasSyncJob:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 1923
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Height:Ljava/lang/Integer;

    return-void
.end method

.method public final setHomePageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1728
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->HomePageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setImageTags(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/mb/android/model/entities/ImageType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1518
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ImageTags:Ljava/util/HashMap;

    return-void
.end method

.method public final setIndexNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IndexNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setIndexNumberEnd(Ljava/lang/Integer;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IndexNumberEnd:Ljava/lang/Integer;

    return-void
.end method

.method public final setIndexOptions([Ljava/lang/String;)V
    .locals 0

    .line 1191
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IndexOptions:[Ljava/lang/String;

    return-void
.end method

.method public final setIsFolder(Ljava/lang/Boolean;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsFolder:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsHD(Ljava/lang/Boolean;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsHD:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsKids(Ljava/lang/Boolean;)V
    .locals 0

    .line 2445
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsKids:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsLive(Ljava/lang/Boolean;)V
    .locals 0

    .line 2415
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsLive:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsMovie(Ljava/lang/Boolean;)V
    .locals 0

    .line 2370
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsMovie:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsNews(Ljava/lang/Boolean;)V
    .locals 0

    .line 2430
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsNews:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsPlaceHolder(Ljava/lang/Boolean;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsPlaceHolder:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsPremiere(Ljava/lang/Boolean;)V
    .locals 0

    .line 2460
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsPremiere:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsRepeat(Ljava/lang/Boolean;)V
    .locals 0

    .line 2340
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsRepeat:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSeries(Ljava/lang/Boolean;)V
    .locals 0

    .line 2400
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsSeries:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSports(Ljava/lang/Boolean;)V
    .locals 0

    .line 2385
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsSports:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSynced(Ljava/lang/Boolean;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsSynced:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsoSpeedRating(Ljava/lang/Integer;)V
    .locals 0

    .line 2022
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->IsoSpeedRating:Ljava/lang/Integer;

    return-void
.end method

.method public final setKeywords(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1221
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Keywords:Ljava/util/ArrayList;

    return-void
.end method

.method public final setLatitude(Ljava/lang/Double;)V
    .locals 0

    .line 1995
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Latitude:Ljava/lang/Double;

    return-void
.end method

.method public final setLocalChildren(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 2497
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->LocalChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public final setLocalTrailerCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1011
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->LocalTrailerCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setLockData(Ljava/lang/Boolean;)V
    .locals 0

    .line 1904
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->LockData:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLongitude(Ljava/lang/Double;)V
    .locals 0

    .line 2004
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Longitude:Ljava/lang/Double;

    return-void
.end method

.method public final setMediaSourceCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1469
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->MediaSourceCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setMediaSources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/MediaSourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 431
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->MediaSources:Ljava/util/List;

    return-void
.end method

.method public final setMediaStreams(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/entities/MediaStream;",
            ">;)V"
        }
    .end annotation

    .line 1430
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->MediaStreams:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMediaType(Ljava/lang/String;)V
    .locals 0

    .line 1698
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->MediaType:Ljava/lang/String;

    return-void
.end method

.method public final setMetascore(Ljava/lang/Float;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Metascore:Ljava/lang/Float;

    return-void
.end method

.method public final setMovieCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1787
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->MovieCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setMultiPartGameFiles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 496
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->MultiPartGameFiles:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMusicVideoCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1889
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->MusicVideoCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setNumber(Ljava/lang/String;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Number:Ljava/lang/String;

    return-void
.end method

.method public final setOfficialRating(Ljava/lang/String;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->OfficialRating:Ljava/lang/String;

    return-void
.end method

.method public final setOriginalCollectionType(Ljava/lang/String;)V
    .locals 0

    .line 1311
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->OriginalCollectionType:Ljava/lang/String;

    return-void
.end method

.method public final setOriginalRunTimeTicks(Ljava/lang/Long;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->OriginalRunTimeTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setOriginalTitle(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->OriginalTitle:Ljava/lang/String;

    return-void
.end method

.method public final setOverview(Ljava/lang/String;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Overview:Ljava/lang/String;

    return-void
.end method

.method public final setParentArtImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1593
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentArtImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setParentArtItemId(Ljava/lang/String;)V
    .locals 0

    .line 1578
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentArtItemId:Ljava/lang/String;

    return-void
.end method

.method public final setParentBackdropImageTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 996
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentBackdropImageTags:Ljava/util/ArrayList;

    return-void
.end method

.method public final setParentBackdropItemId(Ljava/lang/String;)V
    .locals 0

    .line 981
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentBackdropItemId:Ljava/lang/String;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentId:Ljava/lang/String;

    return-void
.end method

.method public final setParentIndexNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentIndexNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setParentLogoImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1563
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentLogoImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setParentLogoItemId(Ljava/lang/String;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentLogoItemId:Ljava/lang/String;

    return-void
.end method

.method public final setParentPrimaryImageItemId(Ljava/lang/String;)V
    .locals 0

    .line 1668
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentPrimaryImageItemId:Ljava/lang/String;

    return-void
.end method

.method public final setParentPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1683
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentPrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setParentThumbImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1653
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentThumbImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setParentThumbItemId(Ljava/lang/String;)V
    .locals 0

    .line 1638
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ParentThumbItemId:Ljava/lang/String;

    return-void
.end method

.method public final setPartCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1460
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->PartCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Path:Ljava/lang/String;

    return-void
.end method

.method public final setPlayers(Ljava/lang/Integer;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Players:Ljava/lang/Integer;

    return-void
.end method

.method public final setPlaylistItemId(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->PlaylistItemId:Ljava/lang/String;

    return-void
.end method

.method public final setPreferredMetadataCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->PreferredMetadataCountryCode:Ljava/lang/String;

    return-void
.end method

.method public final setPreferredMetadataLanguage(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->PreferredMetadataLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setPremiereDate(Ljava/util/Date;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->PremiereDate:Ljava/util/Date;

    return-void
.end method

.method public final setPrimaryImageAspectRatio(Ljava/lang/Double;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->PrimaryImageAspectRatio:Ljava/lang/Double;

    return-void
.end method

.method public final setProductionLocations([Ljava/lang/String;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ProductionLocations:[Ljava/lang/String;

    return-void
.end method

.method public final setProductionYear(Ljava/lang/Integer;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ProductionYear:Ljava/lang/Integer;

    return-void
.end method

.method public final setProgramCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1810
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ProgramCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setProgramId(Ljava/lang/String;)V
    .locals 0

    .line 2282
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ProgramId:Ljava/lang/String;

    return-void
.end method

.method public final setProviderIds(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 883
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ProviderIds:Ljava/util/HashMap;

    return-void
.end method

.method public final setRecordingCount(Ljava/lang/Integer;)V
    .locals 0

    .line 2035
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->RecordingCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setRecursiveItemCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1041
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->RecursiveItemCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setRevenue(Ljava/lang/Double;)V
    .locals 0

    .line 1758
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Revenue:Ljava/lang/Double;

    return-void
.end method

.method public final setRunTimeTicks(Ljava/lang/Long;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->RunTimeTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setScreenshotImageTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1548
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ScreenshotImageTags:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSeasonId(Ljava/lang/String;)V
    .locals 0

    .line 1101
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeasonId:Ljava/lang/String;

    return-void
.end method

.method public final setSeasonName(Ljava/lang/String;)V
    .locals 0

    .line 1415
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeasonName:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1801
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setSeriesGenres(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 649
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesGenres:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSeriesId(Ljava/lang/String;)V
    .locals 0

    .line 1086
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesId:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesName(Ljava/lang/String;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesName:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1370
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesPrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesStudio(Ljava/lang/String;)V
    .locals 0

    .line 1623
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesStudio:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesThumbImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1608
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesThumbImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesTimerId(Ljava/lang/String;)V
    .locals 0

    .line 2050
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SeriesTimerId:Ljava/lang/String;

    return-void
.end method

.method public final setServerId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ServerId:Ljava/lang/String;

    return-void
.end method

.method public final setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ServiceName:Ljava/lang/String;

    return-void
.end method

.method public final setShareUrl(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ShareUrl:Ljava/lang/String;

    return-void
.end method

.method public final setShortOverview(Ljava/lang/String;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ShortOverview:Ljava/lang/String;

    return-void
.end method

.method public final setShutterSpeed(Ljava/lang/Double;)V
    .locals 0

    .line 1986
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->ShutterSpeed:Ljava/lang/Double;

    return-void
.end method

.method public final setSoftware(Ljava/lang/String;)V
    .locals 0

    .line 1950
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Software:Ljava/lang/String;

    return-void
.end method

.method public final setSongCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1852
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SongCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setSortName(Ljava/lang/String;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SortName:Ljava/lang/String;

    return-void
.end method

.method public final setSoundtrackIds([Ljava/lang/String;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SoundtrackIds:[Ljava/lang/String;

    return-void
.end method

.method public final setSourceType(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SourceType:Ljava/lang/String;

    return-void
.end method

.method public final setSpecialFeatureCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1116
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SpecialFeatureCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setStartDate(Ljava/util/Date;)V
    .locals 0

    .line 2310
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->StartDate:Ljava/util/Date;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Status:Ljava/lang/String;

    return-void
.end method

.method public final setSupportsSync(Ljava/lang/Boolean;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SupportsSync:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSyncPercent(Ljava/lang/Double;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->SyncPercent:Ljava/lang/Double;

    return-void
.end method

.method public final setTaglines(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 619
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Taglines:Ljava/util/ArrayList;

    return-void
.end method

.method public final setTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1206
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Tags:Ljava/util/ArrayList;

    return-void
.end method

.method public final setTimerId(Ljava/lang/String;)V
    .locals 0

    .line 2475
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->TimerId:Ljava/lang/String;

    return-void
.end method

.method public final setTrailerCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1773
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->TrailerCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Type:Ljava/lang/String;

    return-void
.end method

.method public final setUserData(Lcom/mb/android/model/dto/UserItemDataDto;)V
    .locals 0

    .line 1026
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->UserData:Lcom/mb/android/model/dto/UserItemDataDto;

    return-void
.end method

.method public final setVoteCount(Ljava/lang/Integer;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->VoteCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 1914
    iput-object p1, p0, Lcom/mb/android/model/dto/BaseItemDto;->Width:Ljava/lang/Integer;

    return-void
.end method
