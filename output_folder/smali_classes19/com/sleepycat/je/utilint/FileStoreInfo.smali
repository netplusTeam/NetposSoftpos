.class public abstract Lcom/sleepycat/je/utilint/FileStoreInfo;
.super Ljava/lang/Object;
.source "FileStoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/utilint/FileStoreInfo$FailingFactory;,
        Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;
    }
.end annotation


# static fields
.field public static final FILE_STORE_CLASS:Ljava/lang/String; = "java.nio.file.FileStore"

.field private static final JAVA7_FILE_STORE_FACTORY_CLASS:Ljava/lang/String; = "com.sleepycat.je.utilint.Java7FileStoreInfo$Java7Factory"

.field private static final standardFactory:Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;

.field private static volatile testFactory:Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/sleepycat/je/utilint/FileStoreInfo;->createFactory()Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/utilint/FileStoreInfo;->standardFactory:Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/sleepycat/je/utilint/FileStoreInfo;->testFactory:Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized checkSupported()V
    .locals 2

    const-class v0, Lcom/sleepycat/je/utilint/FileStoreInfo;

    monitor-enter v0

    .line 113
    :try_start_0
    invoke-static {}, Lcom/sleepycat/je/utilint/FileStoreInfo;->getFactory()Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;->factoryCheckSupported()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v0

    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static createFactory()Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;
    .locals 5

    .line 85
    :try_start_0
    const-string v0, "java.nio.file.FileStore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    nop

    .line 92
    :try_start_1
    const-string v0, "com.sleepycat.je.utilint.Java7FileStoreInfo$Java7Factory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sleepycat/je/utilint/FileStoreInfo$FailingFactory;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem accessing class com.sleepycat.je.utilint.Java7FileStoreInfo$Java7Factory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/sleepycat/je/utilint/FileStoreInfo$FailingFactory;-><init>(Ljava/lang/RuntimeException;)V

    return-object v1

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lcom/sleepycat/je/utilint/FileStoreInfo$FailingFactory;

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "FileStoreInfo is only supported for Java 7 and later"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/sleepycat/je/utilint/FileStoreInfo$FailingFactory;-><init>(Ljava/lang/RuntimeException;)V

    return-object v1
.end method

.method private static declared-synchronized getFactory()Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;
    .locals 2

    const-class v0, Lcom/sleepycat/je/utilint/FileStoreInfo;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lcom/sleepycat/je/utilint/FileStoreInfo;->testFactory:Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;

    if-nez v1, :cond_0

    sget-object v1, Lcom/sleepycat/je/utilint/FileStoreInfo;->standardFactory:Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/utilint/FileStoreInfo;->testFactory:Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInfo(Ljava/lang/String;)Lcom/sleepycat/je/utilint/FileStoreInfo;
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-static {}, Lcom/sleepycat/je/utilint/FileStoreInfo;->getFactory()Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;->factoryGetInfo(Ljava/lang/String;)Lcom/sleepycat/je/utilint/FileStoreInfo;

    move-result-object v0

    return-object v0
.end method

.method public static setFactory(Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;)V
    .locals 0
    .param p0, "factory"    # Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;

    .line 123
    sput-object p0, Lcom/sleepycat/je/utilint/FileStoreInfo;->testFactory:Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;

    .line 124
    return-void
.end method


# virtual methods
.method public abstract getTotalSpace()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getUsableSpace()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
