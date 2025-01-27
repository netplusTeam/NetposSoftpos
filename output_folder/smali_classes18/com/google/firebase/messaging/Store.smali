.class Lcom/google/firebase/messaging/Store;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/Store$Token;
    }
.end annotation


# static fields
.field static final NO_BACKUP_FILE:Ljava/lang/String; = "com.google.android.gms.appid-no-backup"

.field static final PREFERENCES:Ljava/lang/String; = "com.google.android.gms.appid"

.field private static final SCOPE_ALL:Ljava/lang/String; = "*"

.field private static final STORE_KEY_TOKEN:Ljava/lang/String; = "|T|"


# instance fields
.field final store:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "com.google.android.gms.appid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/Store;->store:Landroid/content/SharedPreferences;

    .line 53
    const-string v0, "com.google.android.gms.appid-no-backup"

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/messaging/Store;->checkForRestore(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private checkForRestore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 57
    const-string v0, "FirebaseMessaging"

    invoke-static {p1}, Landroidx/core/content/ContextCompat;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 58
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    return-void

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/google/firebase/messaging/Store;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    const-string v3, "App restored, clearing state"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/google/firebase/messaging/Store;->deleteAll()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_1
    goto :goto_0

    .line 74
    :catch_0
    move-exception v3

    .line 76
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x3

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error creating file in no backup dir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    return-void
.end method

.method private createTokenKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "audience"    # Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|T|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized deleteAll()V
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/Store;->store:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 91
    .end local p0    # "this":Lcom/google/firebase/messaging/Store;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "audience"    # Ljava/lang/String;

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/messaging/Store;->createTokenKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/firebase/messaging/Store;->store:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 114
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 111
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local p0    # "this":Lcom/google/firebase/messaging/Store;
    .end local p1    # "subtype":Ljava/lang/String;
    .end local p2    # "audience":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/Store$Token;
    .locals 3
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "audience"    # Ljava/lang/String;

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/Store;->store:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/messaging/Store;->createTokenKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/messaging/Store$Token;->parse(Ljava/lang/String;)Lcom/google/firebase/messaging/Store$Token;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 96
    .end local p0    # "this":Lcom/google/firebase/messaging/Store;
    .end local p1    # "subtype":Ljava/lang/String;
    .end local p2    # "audience":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/Store;->store:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 83
    .end local p0    # "this":Lcom/google/firebase/messaging/Store;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "audience"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Lcom/google/firebase/messaging/Store$Token;->encode(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v0, "encodedToken":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 104
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/firebase/messaging/Store;->store:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 107
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/messaging/Store;->createTokenKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 100
    .end local v0    # "encodedToken":Ljava/lang/String;
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local p0    # "this":Lcom/google/firebase/messaging/Store;
    .end local p1    # "subtype":Ljava/lang/String;
    .end local p2    # "audience":Ljava/lang/String;
    .end local p3    # "token":Ljava/lang/String;
    .end local p4    # "appVersion":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
