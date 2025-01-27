.class Lcom/google/firebase/messaging/GmsRpc;
.super Ljava/lang/Object;
.source "GmsRpc.java"


# static fields
.field static final CMD_RST:Ljava/lang/String; = "RST"

.field static final CMD_RST_FULL:Ljava/lang/String; = "RST_FULL"

.field static final CMD_SYNC:Ljava/lang/String; = "SYNC"

.field static final ERROR_INSTANCE_ID_RESET:Ljava/lang/String; = "INSTANCE_ID_RESET"

.field static final ERROR_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "INTERNAL_SERVER_ERROR"

.field static final ERROR_INTERNAL_SERVER_ERROR_ALT:Ljava/lang/String; = "InternalServerError"

.field static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field private static final EXTRA_DELETE:Ljava/lang/String; = "delete"

.field private static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field private static final EXTRA_IID_OPERATION:Ljava/lang/String; = "iid-operation"

.field private static final EXTRA_REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field private static final EXTRA_SCOPE:Ljava/lang/String; = "scope"

.field private static final EXTRA_SENDER:Ljava/lang/String; = "sender"

.field private static final EXTRA_SUBTYPE:Ljava/lang/String; = "subtype"

.field private static final EXTRA_TOPIC:Ljava/lang/String; = "gcm.topic"

.field private static final EXTRA_UNREGISTERED:Ljava/lang/String; = "unregistered"

.field static final FIREBASE_IID_HEARTBEAT_TAG:Ljava/lang/String; = "fire-iid"

.field private static final PARAM_APP_VER_CODE:Ljava/lang/String; = "app_ver"

.field private static final PARAM_APP_VER_NAME:Ljava/lang/String; = "app_ver_name"

.field private static final PARAM_CLIENT_VER:Ljava/lang/String; = "cliv"

.field private static final PARAM_FIREBASE_APP_NAME_HASH:Ljava/lang/String; = "firebase-app-name-hash"

.field private static final PARAM_FIS_AUTH_TOKEN:Ljava/lang/String; = "Goog-Firebase-Installations-Auth"

.field private static final PARAM_GMP_APP_ID:Ljava/lang/String; = "gmp_app_id"

.field private static final PARAM_GMS_VER:Ljava/lang/String; = "gmsv"

.field private static final PARAM_HEARTBEAT_CODE:Ljava/lang/String; = "Firebase-Client-Log-Type"

.field private static final PARAM_INSTANCE_ID:Ljava/lang/String; = "appid"

.field private static final PARAM_OS_VER:Ljava/lang/String; = "osv"

.field private static final PARAM_USER_AGENT:Ljava/lang/String; = "Firebase-Client"

.field private static final SCOPE_ALL:Ljava/lang/String; = "*"

.field static final TAG:Ljava/lang/String; = "FirebaseMessaging"

.field private static final TOPIC_PREFIX:Ljava/lang/String; = "/topics/"


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final heartbeatInfo:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final metadata:Lcom/google/firebase/messaging/Metadata;

.field private final rpc:Lcom/google/android/gms/cloudmessaging/Rpc;

.field private final userAgentPublisher:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/platforminfo/UserAgentPublisher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/messaging/Metadata;Lcom/google/android/gms/cloudmessaging/Rpc;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V
    .locals 0
    .param p1, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p2, "metadata"    # Lcom/google/firebase/messaging/Metadata;
    .param p3, "rpc"    # Lcom/google/android/gms/cloudmessaging/Rpc;
    .param p6, "firebaseInstallations"    # Lcom/google/firebase/installations/FirebaseInstallationsApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/messaging/Metadata;",
            "Lcom/google/android/gms/cloudmessaging/Rpc;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/platforminfo/UserAgentPublisher;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            ")V"
        }
    .end annotation

    .line 169
    .local p4, "userAgentPublisher":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/platforminfo/UserAgentPublisher;>;"
    .local p5, "heartbeatInfo":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/google/firebase/messaging/GmsRpc;->app:Lcom/google/firebase/FirebaseApp;

    .line 171
    iput-object p2, p0, Lcom/google/firebase/messaging/GmsRpc;->metadata:Lcom/google/firebase/messaging/Metadata;

    .line 172
    iput-object p3, p0, Lcom/google/firebase/messaging/GmsRpc;->rpc:Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 173
    iput-object p4, p0, Lcom/google/firebase/messaging/GmsRpc;->userAgentPublisher:Lcom/google/firebase/inject/Provider;

    .line 174
    iput-object p5, p0, Lcom/google/firebase/messaging/GmsRpc;->heartbeatInfo:Lcom/google/firebase/inject/Provider;

    .line 175
    iput-object p6, p0, Lcom/google/firebase/messaging/GmsRpc;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 176
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V
    .locals 7
    .param p1, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p2, "metadata"    # Lcom/google/firebase/messaging/Metadata;
    .param p5, "firebaseInstallations"    # Lcom/google/firebase/installations/FirebaseInstallationsApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/messaging/Metadata;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/platforminfo/UserAgentPublisher;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            ")V"
        }
    .end annotation

    .line 153
    .local p3, "userAgentPublisher":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/platforminfo/UserAgentPublisher;>;"
    .local p4, "heartbeatInfo":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;>;"
    new-instance v3, Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 156
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/cloudmessaging/Rpc;-><init>(Landroid/content/Context;)V

    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/GmsRpc;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/messaging/Metadata;Lcom/google/android/gms/cloudmessaging/Rpc;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V

    .line 160
    return-void
.end method

.method private static base64UrlSafe([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 231
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractResponseWhenComplete(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    .local p1, "rpcTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Landroid/os/Bundle;>;"
    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Lcom/google/firebase/messaging/GmsRpc$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/GmsRpc$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/messaging/GmsRpc;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private getHashedFirebaseAppName()Ljava/lang/String;
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRpc;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "firebaseAppName":Ljava/lang/String;
    const-string v1, "SHA-1"

    .line 238
    .local v1, "hashAlgo":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/messaging/GmsRpc;->base64UrlSafe([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 239
    :catch_0
    move-exception v2

    .line 240
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "[HASH-ERROR]"

    return-object v3
.end method

.method private handleResponse(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7
    .param p1, "response"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    const-string v0, "SERVICE_NOT_AVAILABLE"

    if-eqz p1, :cond_4

    .line 293
    const-string/jumbo v1, "registration_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 295
    return-object v1

    .line 298
    :cond_0
    const-string/jumbo v2, "unregistered"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "unregisteredPackage":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 300
    return-object v2

    .line 303
    :cond_1
    const-string v3, "error"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "error":Ljava/lang/String;
    const-string v4, "RST"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 308
    if-eqz v3, :cond_2

    .line 309
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    const-string v6, "FirebaseMessaging"

    invoke-static {v6, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 307
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v4, "INSTANCE_ID_RESET"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "unregisteredPackage":Ljava/lang/String;
    .end local v3    # "error":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isErrorMessageForRetryableError(Ljava/lang/String;)Z
    .locals 1
    .param p0, "errorMessage"    # Ljava/lang/String;

    .line 324
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    const-string v0, "INTERNAL_SERVER_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    const-string v0, "InternalServerError"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 324
    :goto_1
    return v0
.end method

.method private setDefaultAttributesToBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 246
    const-string v0, "FirebaseMessaging"

    const-string/jumbo v1, "scope"

    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v1, "sender"

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v1, "subtype"

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRpc;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmp_app_id"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRpc;->metadata:Lcom/google/firebase/messaging/Metadata;

    invoke-virtual {v1}, Lcom/google/firebase/messaging/Metadata;->getGmsVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsv"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "osv"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRpc;->metadata:Lcom/google/firebase/messaging/Metadata;

    invoke-virtual {v1}, Lcom/google/firebase/messaging/Metadata;->getAppVersionCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_ver"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRpc;->metadata:Lcom/google/firebase/messaging/Metadata;

    invoke-virtual {v1}, Lcom/google/firebase/messaging/Metadata;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_ver_name"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/google/firebase/messaging/GmsRpc;->getHashedFirebaseAppName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "firebase-app-name-hash"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRpc;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/installations/InstallationTokenResult;

    invoke-virtual {v1}, Lcom/google/firebase/installations/InstallationTokenResult;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "fisAuthToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    const-string v2, "Goog-Firebase-Installations-Auth"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_0
    const-string v2, "FIS auth token is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1    # "fisAuthToken":Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 266
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "Failed to get FIS auth token"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRpc;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-interface {v0}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "appid"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "23.0.8"

    .line 274
    .local v0, "version":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fcm-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cliv"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRpc;->heartbeatInfo:Lcom/google/firebase/inject/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    .line 276
    .local v1, "heartbeatInfoObject":Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;
    iget-object v2, p0, Lcom/google/firebase/messaging/GmsRpc;->userAgentPublisher:Lcom/google/firebase/inject/Provider;

    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/platforminfo/UserAgentPublisher;

    .line 277
    .local v2, "userAgentPublisherObject":Lcom/google/firebase/platforminfo/UserAgentPublisher;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 278
    const-string v3, "fire-iid"

    invoke-interface {v1, v3}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;->getHeartBeatCode(Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    move-result-object v3

    .line 279
    .local v3, "heartbeat":Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    sget-object v4, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->NONE:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    if-eq v3, v4, :cond_1

    .line 280
    invoke-virtual {v3}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Firebase-Client-Log-Type"

    invoke-virtual {p3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-interface {v2}, Lcom/google/firebase/platforminfo/UserAgentPublisher;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Firebase-Client"

    invoke-virtual {p3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .end local v3    # "heartbeat":Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    :cond_1
    return-void
.end method

.method private startRpc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 222
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/messaging/GmsRpc;->setDefaultAttributesToBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    nop

    .line 227
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRpc;->rpc:Lcom/google/android/gms/cloudmessaging/Rpc;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/cloudmessaging/Rpc;->send(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 223
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method deleteToken()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "*>;"
        }
    .end annotation

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "delete"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRpc;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v1}, Lcom/google/firebase/messaging/Metadata;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-direct {p0, v1, v2, v0}, Lcom/google/firebase/messaging/GmsRpc;->startRpc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 190
    .local v1, "rpcTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Landroid/os/Bundle;>;"
    invoke-direct {p0, v1}, Lcom/google/firebase/messaging/GmsRpc;->extractResponseWhenComplete(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    return-object v2
.end method

.method getToken()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRpc;->app:Lcom/google/firebase/FirebaseApp;

    .line 180
    invoke-static {v0}, Lcom/google/firebase/messaging/Metadata;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "*"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/firebase/messaging/GmsRpc;->startRpc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 181
    .local v0, "rpcTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Landroid/os/Bundle;>;"
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/GmsRpc;->extractResponseWhenComplete(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$extractResponseWhenComplete$0$com-google-firebase-messaging-GmsRpc(Lcom/google/android/gms/tasks/Task;)Ljava/lang/String;
    .locals 1
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 320
    const-class v0, Ljava/io/IOException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/GmsRpc;->handleResponse(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method subscribeToTopic(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1, "cachedToken"    # Ljava/lang/String;
    .param p2, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "*>;"
        }
    .end annotation

    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/topics/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gcm.topic"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    move-object v1, p1

    .line 202
    .local v1, "to":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "scope":Ljava/lang/String;
    invoke-direct {p0, v1, v2, v0}, Lcom/google/firebase/messaging/GmsRpc;->startRpc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 204
    .local v3, "rpcTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Landroid/os/Bundle;>;"
    invoke-direct {p0, v3}, Lcom/google/firebase/messaging/GmsRpc;->extractResponseWhenComplete(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    return-object v4
.end method

.method unsubscribeFromTopic(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1, "cachedToken"    # Ljava/lang/String;
    .param p2, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "*>;"
        }
    .end annotation

    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/topics/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gcm.topic"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "delete"

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    move-object v1, p1

    .line 214
    .local v1, "to":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "scope":Ljava/lang/String;
    invoke-direct {p0, v1, v2, v0}, Lcom/google/firebase/messaging/GmsRpc;->startRpc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 217
    .local v3, "rpcTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Landroid/os/Bundle;>;"
    invoke-direct {p0, v3}, Lcom/google/firebase/messaging/GmsRpc;->extractResponseWhenComplete(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    return-object v4
.end method
