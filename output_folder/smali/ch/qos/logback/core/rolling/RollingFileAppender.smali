.class public Lch/qos/logback/core/rolling/RollingFileAppender;
.super Lch/qos/logback/core/FileAppender;
.source "RollingFileAppender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/FileAppender<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static COLLISION_URL:Ljava/lang/String;

.field private static RFA_LATE_FILE_URL:Ljava/lang/String;

.field private static RFA_NO_RP_URL:Ljava/lang/String;

.field private static RFA_NO_TP_URL:Ljava/lang/String;


# instance fields
.field currentlyActiveFile:Ljava/io/File;

.field rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

.field triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/rolling/TriggeringPolicy<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "http://logback.qos.ch/codes.html#rfa_no_tp"

    sput-object v0, Lch/qos/logback/core/rolling/RollingFileAppender;->RFA_NO_TP_URL:Ljava/lang/String;

    .line 47
    const-string v0, "http://logback.qos.ch/codes.html#rfa_no_rp"

    sput-object v0, Lch/qos/logback/core/rolling/RollingFileAppender;->RFA_NO_RP_URL:Ljava/lang/String;

    .line 48
    const-string v0, "http://logback.qos.ch/codes.html#rfa_collision"

    sput-object v0, Lch/qos/logback/core/rolling/RollingFileAppender;->COLLISION_URL:Ljava/lang/String;

    .line 49
    const-string v0, "http://logback.qos.ch/codes.html#rfa_file_after"

    sput-object v0, Lch/qos/logback/core/rolling/RollingFileAppender;->RFA_LATE_FILE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/FileAppender;-><init>()V

    return-void
.end method

.method private attemptOpenFile()V
    .locals 3

    .line 200
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    invoke-interface {v1}, Lch/qos/logback/core/rolling/RollingPolicy;->getActiveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->currentlyActiveFile:Ljava/io/File;

    .line 203
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    invoke-interface {v0}, Lch/qos/logback/core/rolling/RollingPolicy;->getActiveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->openFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", false) call failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private attemptRollover()V
    .locals 2

    .line 211
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    invoke-interface {v0}, Lch/qos/logback/core/rolling/RollingPolicy;->rollover()V
    :try_end_0
    .catch Lch/qos/logback/core/rolling/RolloverFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "rf":Lch/qos/logback/core/rolling/RolloverFailure;
    const-string v1, "RolloverFailure occurred. Deferring roll-over."

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/RollingFileAppender;->addWarn(Ljava/lang/String;)V

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->append:Z

    .line 217
    .end local v0    # "rf":Lch/qos/logback/core/rolling/RolloverFailure;
    :goto_0
    return-void
.end method

.method private checkForCollisionsInPreviousRollingFileAppenders()Z
    .locals 4

    .line 117
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    const/4 v0, 0x0

    .line 118
    .local v0, "collisionResult":Z
    iget-object v1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    instance-of v2, v1, Lch/qos/logback/core/rolling/RollingPolicyBase;

    if-eqz v2, :cond_0

    .line 119
    check-cast v1, Lch/qos/logback/core/rolling/RollingPolicyBase;

    .line 120
    .local v1, "base":Lch/qos/logback/core/rolling/RollingPolicyBase;
    iget-object v2, v1, Lch/qos/logback/core/rolling/RollingPolicyBase;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    .line 121
    .local v2, "fileNamePattern":Lch/qos/logback/core/rolling/helper/FileNamePattern;
    invoke-direct {p0, v2}, Lch/qos/logback/core/rolling/RollingFileAppender;->innerCheckForFileNamePatternCollisionInPreviousRFA(Lch/qos/logback/core/rolling/helper/FileNamePattern;)Z

    move-result v3

    .line 122
    .local v3, "collisionsDetected":Z
    if-eqz v3, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 125
    .end local v1    # "base":Lch/qos/logback/core/rolling/RollingPolicyBase;
    .end local v2    # "fileNamePattern":Lch/qos/logback/core/rolling/helper/FileNamePattern;
    .end local v3    # "collisionsDetected":Z
    :cond_0
    return v0
.end method

.method private checkForFileAndPatternCollisions()Z
    .locals 4

    .line 104
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    instance-of v1, v0, Lch/qos/logback/core/rolling/RollingPolicyBase;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Lch/qos/logback/core/rolling/RollingPolicyBase;

    .line 106
    .local v0, "base":Lch/qos/logback/core/rolling/RollingPolicyBase;
    iget-object v1, v0, Lch/qos/logback/core/rolling/RollingPolicyBase;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    .line 108
    .local v1, "fileNamePattern":Lch/qos/logback/core/rolling/helper/FileNamePattern;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v1}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->toRegex()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "regex":Ljava/lang/String;
    iget-object v3, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 113
    .end local v0    # "base":Lch/qos/logback/core/rolling/RollingPolicyBase;
    .end local v1    # "fileNamePattern":Lch/qos/logback/core/rolling/helper/FileNamePattern;
    .end local v2    # "regex":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private innerCheckForFileNamePatternCollisionInPreviousRFA(Lch/qos/logback/core/rolling/helper/FileNamePattern;)Z
    .locals 7
    .param p1, "fileNamePattern"    # Lch/qos/logback/core/rolling/helper/FileNamePattern;

    .line 129
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    const/4 v0, 0x0

    .line 131
    .local v0, "collisionsDetected":Z
    iget-object v1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->context:Lch/qos/logback/core/Context;

    const-string v2, "RFA_FILENAME_PATTERN_COLLISION_MAP"

    invoke-interface {v1, v2}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 132
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lch/qos/logback/core/rolling/helper/FileNamePattern;>;"
    if-nez v1, :cond_0

    .line 133
    return v0

    .line 135
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 136
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lch/qos/logback/core/rolling/helper/FileNamePattern;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v4}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "FileNamePattern"

    invoke-virtual {p0, v6, v4, v5}, Lch/qos/logback/core/rolling/RollingFileAppender;->addErrorForCollision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x1

    .line 140
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lch/qos/logback/core/rolling/helper/FileNamePattern;>;"
    :cond_1
    goto :goto_0

    .line 141
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 142
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_3
    return v0
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    .line 175
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    invoke-interface {v0}, Lch/qos/logback/core/rolling/RollingPolicy;->getActiveFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRollingPolicy()Lch/qos/logback/core/rolling/RollingPolicy;
    .locals 1

    .line 239
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    return-object v0
.end method

.method public getTriggeringPolicy()Lch/qos/logback/core/rolling/TriggeringPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/rolling/TriggeringPolicy<",
            "TE;>;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    return-object v0
.end method

.method public rollover()V
    .locals 2

    .line 182
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->closeOutputStream()V

    .line 190
    invoke-direct {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->attemptRollover()V

    .line 191
    invoke-direct {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->attemptOpenFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 194
    nop

    .line 195
    return-void

    .line 193
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .line 166
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    if-eqz p1, :cond_1

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    const-string v0, "File property must be set before any triggeringPolicy or rollingPolicy properties"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For more information, please visit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/rolling/RollingFileAppender;->RFA_LATE_FILE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    .line 170
    :cond_1
    invoke-super {p0, p1}, Lch/qos/logback/core/FileAppender;->setFile(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public setRollingPolicy(Lch/qos/logback/core/rolling/RollingPolicy;)V
    .locals 1
    .param p1, "policy"    # Lch/qos/logback/core/rolling/RollingPolicy;

    .line 255
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    .line 256
    instance-of v0, p1, Lch/qos/logback/core/rolling/TriggeringPolicy;

    if-eqz v0, :cond_0

    .line 257
    move-object v0, p1

    check-cast v0, Lch/qos/logback/core/rolling/TriggeringPolicy;

    iput-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    .line 260
    :cond_0
    return-void
.end method

.method public setTriggeringPolicy(Lch/qos/logback/core/rolling/TriggeringPolicy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/rolling/TriggeringPolicy<",
            "TE;>;)V"
        }
    .end annotation

    .line 263
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    .local p1, "policy":Lch/qos/logback/core/rolling/TriggeringPolicy;, "Lch/qos/logback/core/rolling/TriggeringPolicy<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    .line 264
    instance-of v0, p1, Lch/qos/logback/core/rolling/RollingPolicy;

    if-eqz v0, :cond_0

    .line 265
    move-object v0, p1

    check-cast v0, Lch/qos/logback/core/rolling/RollingPolicy;

    iput-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    .line 267
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 52
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    const-string v1, "For more information, please visit "

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No TriggeringPolicy was set for the RollingFileAppender named "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addWarn(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/rolling/RollingFileAppender;->RFA_NO_TP_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addWarn(Ljava/lang/String;)V

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-interface {v0}, Lch/qos/logback/core/rolling/TriggeringPolicy;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const-string v0, "TriggeringPolicy has not started. RollingFileAppender will not start"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addWarn(Ljava/lang/String;)V

    .line 59
    return-void

    .line 62
    :cond_1
    invoke-direct {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->checkForCollisionsInPreviousRollingFileAppenders()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-string v0, "Collisions detected with FileAppender/RollingAppender instances defined earlier. Aborting."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/rolling/RollingFileAppender;->COLLISION_WITH_EARLIER_APPENDER_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    .line 65
    return-void

    .line 69
    :cond_2
    iget-boolean v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->append:Z

    if-nez v0, :cond_3

    .line 70
    const-string v0, "Append mode is mandatory for RollingFileAppender. Defaulting to append=true."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addWarn(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->append:Z

    .line 74
    :cond_3
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    if-nez v0, :cond_4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No RollingPolicy was set for the RollingFileAppender named "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/rolling/RollingFileAppender;->RFA_NO_RP_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    .line 77
    return-void

    .line 81
    :cond_4
    invoke-direct {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->checkForFileAndPatternCollisions()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    const-string v0, "File property collides with fileNamePattern. Aborting."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/rolling/RollingFileAppender;->COLLISION_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    .line 84
    return-void

    .line 87
    :cond_5
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->isPrudent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->rawFileProperty()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 89
    const-string v0, "Setting \"File\" property to null on account of prudent mode"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addWarn(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->setFile(Ljava/lang/String;)V

    .line 92
    :cond_6
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    invoke-interface {v0}, Lch/qos/logback/core/rolling/RollingPolicy;->getCompressionMode()Lch/qos/logback/core/rolling/helper/CompressionMode;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/rolling/helper/CompressionMode;->NONE:Lch/qos/logback/core/rolling/helper/CompressionMode;

    if-eq v0, v1, :cond_7

    .line 93
    const-string v0, "Compression is not supported in prudent mode. Aborting"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    .line 94
    return-void

    .line 98
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->currentlyActiveFile:Ljava/io/File;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active log file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addInfo(Ljava/lang/String;)V

    .line 100
    invoke-super {p0}, Lch/qos/logback/core/FileAppender;->start()V

    .line 101
    return-void
.end method

.method public stop()V
    .locals 2

    .line 149
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    invoke-super {p0}, Lch/qos/logback/core/FileAppender;->stop()V

    .line 151
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lch/qos/logback/core/rolling/RollingPolicy;->stop()V

    .line 153
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {v0}, Lch/qos/logback/core/rolling/TriggeringPolicy;->stop()V

    .line 156
    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->context:Lch/qos/logback/core/Context;

    invoke-static {v0}, Lch/qos/logback/core/util/ContextUtil;->getFilenamePatternCollisionMap(Lch/qos/logback/core/Context;)Ljava/util/Map;

    move-result-object v0

    .line 157
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lch/qos/logback/core/rolling/helper/FileNamePattern;>;"
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 158
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_2
    return-void
.end method

.method protected subAppend(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 229
    .local p0, "this":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    iget-object v2, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->currentlyActiveFile:Ljava/io/File;

    invoke-interface {v1, v2, p1}, Lch/qos/logback/core/rolling/TriggeringPolicy;->isTriggeringEvent(Ljava/io/File;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->rollover()V

    .line 233
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-super {p0, p1}, Lch/qos/logback/core/FileAppender;->subAppend(Ljava/lang/Object;)V

    .line 236
    return-void

    .line 233
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
