.class public Lcom/google/firebase/installations/FirebaseInstallations;
.super Ljava/lang/Object;
.source "FirebaseInstallations.java"

# interfaces
.implements Lcom/google/firebase/installations/FirebaseInstallationsApi;


# static fields
.field private static final API_KEY_VALIDATION_MSG:Ljava/lang/String; = "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

.field private static final APP_ID_VALIDATION_MSG:Ljava/lang/String; = "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

.field private static final AUTH_ERROR_MSG:Ljava/lang/String; = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

.field private static final CHIME_FIREBASE_APP_NAME:Ljava/lang/String; = "CHIME_ANDROID_SDK"

.field private static final CORE_POOL_SIZE:I = 0x0

.field private static final KEEP_ALIVE_TIME_IN_SECONDS:J = 0x1eL

.field private static final LOCKFILE_NAME_GENERATE_FID:Ljava/lang/String; = "generatefid.lock"

.field private static final MAXIMUM_POOL_SIZE:I = 0x1

.field private static final PROJECT_ID_VALIDATION_MSG:Ljava/lang/String; = "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final lockGenerateFid:Ljava/lang/Object;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private cachedFid:Ljava/lang/String;

.field private final fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

.field private fidListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/installations/internal/FidListener;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final iidStore:Lcom/google/firebase/installations/local/IidStore;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/installations/StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final networkExecutor:Ljava/util/concurrent/ExecutorService;

.field private final persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

.field private final serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

.field private final utils:Lcom/google/firebase/installations/Utils;


# direct methods
.method public static synthetic $r8$lambda$ukIZcZ_XlkiT9OCDxQIhblgD6_Y(Lcom/google/firebase/installations/FirebaseInstallations;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->deleteFirebaseInstallationId()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallations$1;

    invoke-direct {v0}, Lcom/google/firebase/installations/FirebaseInstallations$1;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;)V
    .locals 9
    .param p1, "firebaseApp"    # Lcom/google/firebase/FirebaseApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatController;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p2, "heartBeatProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/heartbeatinfo/HeartBeatController;>;"
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Lcom/google/firebase/installations/FirebaseInstallations;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 137
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, p2}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;-><init>(Landroid/content/Context;Lcom/google/firebase/inject/Provider;)V

    new-instance v4, Lcom/google/firebase/installations/local/PersistedInstallation;

    invoke-direct {v4, p1}, Lcom/google/firebase/installations/local/PersistedInstallation;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 139
    invoke-static {}, Lcom/google/firebase/installations/Utils;->getInstance()Lcom/google/firebase/installations/Utils;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/installations/local/IidStore;

    invoke-direct {v6, p1}, Lcom/google/firebase/installations/local/IidStore;-><init>(Lcom/google/firebase/FirebaseApp;)V

    new-instance v7, Lcom/google/firebase/installations/RandomFidGenerator;

    invoke-direct {v7}, Lcom/google/firebase/installations/RandomFidGenerator;-><init>()V

    .line 127
    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/installations/FirebaseInstallations;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;Lcom/google/firebase/installations/local/PersistedInstallation;Lcom/google/firebase/installations/Utils;Lcom/google/firebase/installations/local/IidStore;Lcom/google/firebase/installations/RandomFidGenerator;)V

    .line 142
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;Lcom/google/firebase/installations/local/PersistedInstallation;Lcom/google/firebase/installations/Utils;Lcom/google/firebase/installations/local/IidStore;Lcom/google/firebase/installations/RandomFidGenerator;)V
    .locals 17
    .param p1, "backgroundExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "firebaseApp"    # Lcom/google/firebase/FirebaseApp;
    .param p3, "serviceClient"    # Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;
    .param p4, "persistedInstallation"    # Lcom/google/firebase/installations/local/PersistedInstallation;
    .param p5, "utils"    # Lcom/google/firebase/installations/Utils;
    .param p6, "iidStore"    # Lcom/google/firebase/installations/local/IidStore;
    .param p7, "fidGenerator"    # Lcom/google/firebase/installations/RandomFidGenerator;

    .line 151
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    .line 78
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->fidListeners:Ljava/util/Set;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    .line 152
    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 153
    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 154
    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 155
    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    .line 156
    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/google/firebase/installations/FirebaseInstallations;->iidStore:Lcom/google/firebase/installations/local/IidStore;

    .line 157
    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/google/firebase/installations/FirebaseInstallations;->fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

    .line 158
    move-object/from16 v7, p1

    iput-object v7, v0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 159
    new-instance v15, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v16, Lcom/google/firebase/installations/FirebaseInstallations;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x1e

    move-object v8, v15

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->networkExecutor:Ljava/util/concurrent/ExecutorService;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/installations/FirebaseInstallations;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/installations/FirebaseInstallations;

    .line 63
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidListeners:Ljava/util/Set;

    return-object v0
.end method

.method private addGetAuthTokenListener()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/installations/InstallationTokenResult;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 307
    .local v0, "taskCompletionSource":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/installations/InstallationTokenResult;>;"
    new-instance v1, Lcom/google/firebase/installations/GetAuthTokenListener;

    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/installations/GetAuthTokenListener;-><init>(Lcom/google/firebase/installations/Utils;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 308
    .local v1, "l":Lcom/google/firebase/installations/StateListener;
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->addStateListeners(Lcom/google/firebase/installations/StateListener;)V

    .line 309
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    return-object v2
.end method

.method private addGetIdListener()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 299
    .local v0, "taskCompletionSource":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/String;>;"
    new-instance v1, Lcom/google/firebase/installations/GetIdListener;

    invoke-direct {v1, v0}, Lcom/google/firebase/installations/GetIdListener;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 300
    .local v1, "l":Lcom/google/firebase/installations/StateListener;
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->addStateListeners(Lcom/google/firebase/installations/StateListener;)V

    .line 301
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    return-object v2
.end method

.method private addStateListeners(Lcom/google/firebase/installations/StateListener;)V
    .locals 2
    .param p1, "l"    # Lcom/google/firebase/installations/StateListener;

    .line 313
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private deleteFirebaseInstallationId()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 595
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->updateCacheFid(Ljava/lang/String;)V

    .line 596
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getMultiProcessSafePrefs()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1

    .line 597
    .local v1, "entry":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 600
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 601
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v4

    .line 602
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 603
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRefreshToken()Ljava/lang/String;

    move-result-object v6

    .line 599
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->deleteFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withNoGeneratedFid()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->insertOrUpdatePrefs(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 606
    return-object v0
.end method

.method private doNetworkCallIfNecessary(Z)V
    .locals 4
    .param p1, "forceRefresh"    # Z

    .line 378
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getMultiProcessSafePrefs()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v0

    .line 384
    .local v0, "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isErrored()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isUnregistered()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    invoke-virtual {v1, v0}, Lcom/google/firebase/installations/Utils;->isAuthTokenExpired(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 390
    :cond_1
    return-void

    .line 387
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->fetchAuthTokenFromServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1

    .local v1, "updatedPrefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    goto :goto_2

    .line 385
    .end local v1    # "updatedPrefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->registerFidWithServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/firebase/installations/FirebaseInstallationsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .restart local v1    # "updatedPrefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :goto_2
    nop

    .line 398
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->insertOrUpdatePrefs(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 401
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->updateFidListener(Lcom/google/firebase/installations/local/PersistedInstallationEntry;Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 403
    move-object v0, v1

    .line 406
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 407
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->updateCacheFid(Ljava/lang/String;)V

    .line 411
    :cond_4
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 412
    new-instance v2, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v3, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v2, v3}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    invoke-direct {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnException(Ljava/lang/Exception;)V

    goto :goto_3

    .line 413
    :cond_5
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isNotGenerated()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 416
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnException(Ljava/lang/Exception;)V

    goto :goto_3

    .line 418
    :cond_6
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 420
    :goto_3
    return-void

    .line 392
    .end local v1    # "updatedPrefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Lcom/google/firebase/installations/FirebaseInstallationsException;
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnException(Ljava/lang/Exception;)V

    .line 394
    return-void
.end method

.method private final doRegistrationOrRefresh(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .line 363
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getPrefsWithGeneratedIdMultiProcessSafe()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v0

    .line 367
    .local v0, "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withClearedAuthToken()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v0

    .line 371
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 374
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->networkExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method private fetchAuthTokenFromServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 8
    .param p1, "prefs"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 565
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v2

    .line 567
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 568
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    .line 564
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->generateAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v0

    .line 570
    .local v0, "tokenResult":Lcom/google/firebase/installations/remote/TokenResult;
    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallations$3;->$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getResponseCode()Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 584
    new-instance v1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v2, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    const-string v3, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v1, v3, v2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v1

    .line 581
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->updateCacheFid(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withNoGeneratedFid()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1

    return-object v1

    .line 577
    :pswitch_1
    const-string v1, "BAD CONFIG"

    invoke-virtual {p1, v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withFisError(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1

    return-object v1

    .line 572
    :pswitch_2
    nop

    .line 573
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 574
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getTokenExpirationTimestamp()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    .line 575
    invoke-virtual {v1}, Lcom/google/firebase/installations/Utils;->currentTimeInSecs()J

    move-result-wide v6

    .line 572
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withAuthToken(Ljava/lang/String;JJ)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized getCacheFid()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->cachedFid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 349
    .end local p0    # "this":Lcom/google/firebase/installations/FirebaseInstallations;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/google/firebase/installations/FirebaseInstallations;
    .locals 2

    .line 196
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 197
    .local v0, "defaultFirebaseApp":Lcom/google/firebase/FirebaseApp;
    invoke-static {v0}, Lcom/google/firebase/installations/FirebaseInstallations;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/installations/FirebaseInstallations;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/installations/FirebaseInstallations;
    .locals 2
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;

    .line 208
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Null is not a valid value of FirebaseApp."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 209
    const-class v0, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/installations/FirebaseInstallations;

    return-object v0
.end method

.method private getMultiProcessSafePrefs()Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 3

    .line 617
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 619
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/CrossProcessLock;->acquire(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/CrossProcessLock;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 621
    .local v1, "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 622
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->readPersistedInstallationEntryValue()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    .local v2, "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    nop

    .line 629
    if-eqz v1, :cond_0

    .line 630
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    :cond_0
    monitor-exit v0

    .line 623
    return-object v2

    .line 629
    .end local v2    # "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 630
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 632
    :cond_1
    throw v2

    .line 633
    .end local v1    # "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private getPrefsWithGeneratedIdMultiProcessSafe()Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 6

    .line 471
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 473
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/CrossProcessLock;->acquire(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/CrossProcessLock;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 475
    .local v1, "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 476
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->readPersistedInstallationEntryValue()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2

    .line 478
    .local v2, "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isNotGenerated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    invoke-direct {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->readExistingIidOrCreateFid(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "fid":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 487
    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withUnregisteredFid(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v5

    .line 486
    invoke-virtual {v4, v5}, Lcom/google/firebase/installations/local/PersistedInstallation;->insertOrUpdatePersistedInstallationEntry(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 489
    .end local v3    # "fid":Ljava/lang/String;
    :cond_0
    nop

    .line 495
    if-eqz v1, :cond_1

    .line 496
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    :cond_1
    monitor-exit v0

    .line 489
    return-object v2

    .line 495
    .end local v2    # "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 496
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 498
    :cond_2
    throw v2

    .line 499
    .end local v1    # "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private insertOrUpdatePrefs(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    .locals 3
    .param p1, "prefs"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 440
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 442
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/CrossProcessLock;->acquire(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/CrossProcessLock;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 445
    .local v1, "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    invoke-virtual {v2, p1}, Lcom/google/firebase/installations/local/PersistedInstallation;->insertOrUpdatePersistedInstallationEntry(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    if-eqz v1, :cond_0

    .line 451
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 454
    .end local v1    # "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :cond_0
    monitor-exit v0

    .line 455
    return-void

    .line 450
    .restart local v1    # "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 451
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 453
    :cond_1
    nop

    .end local p1    # "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    throw v2

    .line 454
    .end local v1    # "lock":Lcom/google/firebase/installations/CrossProcessLock;
    .restart local p1    # "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private preConditionChecks()V
    .locals 3

    .line 175
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    nop

    .line 179
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/Utils;->isValidAppIdFormat(Ljava/lang/String;)Z

    move-result v0

    .line 178
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/Utils;->isValidApiKeyFormat(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 181
    return-void
.end method

.method private readExistingIidOrCreateFid(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Ljava/lang/String;
    .locals 2
    .param p1, "prefs"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 504
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->shouldAttemptMigration()Z

    move-result v0

    if-nez v0, :cond_2

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

    invoke-virtual {v0}, Lcom/google/firebase/installations/RandomFidGenerator;->createRandomFid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->iidStore:Lcom/google/firebase/installations/local/IidStore;

    invoke-virtual {v0}, Lcom/google/firebase/installations/local/IidStore;->readIid()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "fid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 511
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

    invoke-virtual {v1}, Lcom/google/firebase/installations/RandomFidGenerator;->createRandomFid()Ljava/lang/String;

    move-result-object v0

    .line 513
    :cond_3
    return-object v0
.end method

.method private registerFidWithServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 11
    .param p1, "prefs"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 521
    const/4 v0, 0x0

    .line 523
    .local v0, "iidToken":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 527
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->iidStore:Lcom/google/firebase/installations/local/IidStore;

    invoke-virtual {v1}, Lcom/google/firebase/installations/local/IidStore;->readToken()Ljava/lang/String;

    move-result-object v0

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 532
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v3

    .line 534
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 535
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    .line 531
    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->createFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse;

    move-result-object v1

    .line 538
    .local v1, "response":Lcom/google/firebase/installations/remote/InstallationResponse;
    sget-object v2, Lcom/google/firebase/installations/FirebaseInstallations$3;->$SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode:[I

    invoke-virtual {v1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getResponseCode()Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 549
    new-instance v2, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v3, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    const-string v4, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v2, v4, v3}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v2

    .line 547
    :pswitch_0
    const-string v2, "BAD CONFIG"

    invoke-virtual {p1, v2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withFisError(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2

    return-object v2

    .line 540
    :pswitch_1
    nop

    .line 541
    invoke-virtual {v1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getFid()Ljava/lang/String;

    move-result-object v4

    .line 542
    invoke-virtual {v1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    .line 543
    invoke-virtual {v2}, Lcom/google/firebase/installations/Utils;->currentTimeInSecs()J

    move-result-wide v6

    .line 544
    invoke-virtual {v1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getAuthToken()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/TokenResult;->getToken()Ljava/lang/String;

    move-result-object v8

    .line 545
    invoke-virtual {v1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getAuthToken()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/TokenResult;->getTokenExpirationTimestamp()J

    move-result-wide v9

    .line 540
    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withRegisteredFid(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private triggerOnException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 332
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 334
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/installations/StateListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/StateListener;

    .line 336
    .local v2, "l":Lcom/google/firebase/installations/StateListener;
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/StateListener;->onException(Ljava/lang/Exception;)Z

    move-result v3

    .line 337
    .local v3, "doneListening":Z
    if-eqz v3, :cond_0

    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 340
    .end local v2    # "l":Lcom/google/firebase/installations/StateListener;
    .end local v3    # "doneListening":Z
    :cond_0
    goto :goto_0

    .line 341
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/installations/StateListener;>;"
    :cond_1
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private triggerOnStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    .locals 4
    .param p1, "persistedInstallationEntry"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 319
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 321
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/installations/StateListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/StateListener;

    .line 323
    .local v2, "l":Lcom/google/firebase/installations/StateListener;
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/StateListener;->onStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Z

    move-result v3

    .line 324
    .local v3, "doneListening":Z
    if-eqz v3, :cond_0

    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 327
    .end local v2    # "l":Lcom/google/firebase/installations/StateListener;
    .end local v3    # "doneListening":Z
    :cond_0
    goto :goto_0

    .line 328
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/installations/StateListener;>;"
    :cond_1
    monitor-exit v0

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized updateCacheFid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cachedFid"    # Ljava/lang/String;

    monitor-enter p0

    .line 345
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->cachedFid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 344
    .end local p0    # "this":Lcom/google/firebase/installations/FirebaseInstallations;
    .end local p1    # "cachedFid":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateFidListener(Lcom/google/firebase/installations/local/PersistedInstallationEntry;Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    .locals 3
    .param p1, "prefs"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .param p2, "updatedPrefs"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    monitor-enter p0

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/installations/internal/FidListener;

    .line 429
    .local v1, "listener":Lcom/google/firebase/installations/internal/FidListener;
    invoke-virtual {p2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/firebase/installations/internal/FidListener;->onFidChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    .end local v1    # "listener":Lcom/google/firebase/installations/internal/FidListener;
    goto :goto_0

    .line 432
    .end local p0    # "this":Lcom/google/firebase/installations/FirebaseInstallations;
    :cond_0
    monitor-exit p0

    return-void

    .line 423
    .end local p1    # "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .end local p2    # "updatedPrefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public delete()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method getApiKey()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApplicationId()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->preConditionChecks()V

    .line 240
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getCacheFid()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "fid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 242
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->addGetIdListener()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 246
    .local v1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 247
    return-object v1
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProjectIdentifier()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Z)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/installations/InstallationTokenResult;",
            ">;"
        }
    .end annotation

    .line 261
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->preConditionChecks()V

    .line 262
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->addGetAuthTokenListener()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 263
    .local v0, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/installations/InstallationTokenResult;>;"
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 264
    return-object v0
.end method

.method synthetic lambda$doRegistrationOrRefresh$2$com-google-firebase-installations-FirebaseInstallations(Z)V
    .locals 0
    .param p1, "forceRefresh"    # Z

    .line 374
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->doNetworkCallIfNecessary(Z)V

    return-void
.end method

.method synthetic lambda$getId$0$com-google-firebase-installations-FirebaseInstallations()V
    .locals 1

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->doRegistrationOrRefresh(Z)V

    return-void
.end method

.method synthetic lambda$getToken$1$com-google-firebase-installations-FirebaseInstallations(Z)V
    .locals 0
    .param p1, "forceRefresh"    # Z

    .line 263
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->doRegistrationOrRefresh(Z)V

    return-void
.end method

.method public declared-synchronized registerFidListener(Lcom/google/firebase/installations/internal/FidListener;)Lcom/google/firebase/installations/internal/FidListenerHandle;
    .locals 1
    .param p1, "listener"    # Lcom/google/firebase/installations/internal/FidListener;

    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallations$2;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations$2;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;Lcom/google/firebase/installations/internal/FidListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 285
    .end local p0    # "this":Lcom/google/firebase/installations/FirebaseInstallations;
    .end local p1    # "listener":Lcom/google/firebase/installations/internal/FidListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
