.class public Lorg/jpos/q2/Q2;
.super Ljava/lang/Object;
.source "Q2.java"

# interfaces
.implements Ljava/io/FileFilter;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/q2/Q2$QEntry;
    }
.end annotation


# static fields
.field private static CFG_PREFIX:Ljava/lang/String; = null

.field public static final DEFAULT_DEPLOY_DIR:Ljava/lang/String; = "deploy"

.field private static DEPLOY_PREFIX:Ljava/lang/String; = null

.field public static final DUPLICATE_EXTENSION:Ljava/lang/String; = "DUP"

.field public static final ENV_EXTENSION:Ljava/lang/String; = "ENV"

.field public static final ERROR_EXTENSION:Ljava/lang/String; = "BAD"

.field public static final JMX_NAME:Ljava/lang/String; = "Q2"

.field public static final LICENSEE:Ljava/lang/String; = "LICENSEE.asc"

.field public static final LOGGER_CONFIG:Ljava/lang/String; = "00_logger.xml"

.field public static final LOGGER_NAME:Ljava/lang/String; = "Q2"

.field public static final PROTECTED_QBEAN:Ljava/lang/String; = "protected-qbean"

.field public static final PUBKEYHASH:[B

.field public static final Q2_CLASS_LOADER:Ljava/lang/String; = "Q2:type=system,service=loader"

.field public static final QBEAN_NAME:Ljava/lang/String; = "Q2:type=qbean,service="

.field public static final REALM:Ljava/lang/String; = "Q2.system"

.field public static final SCAN_INTERVAL:I = 0x9c4

.field public static final SHUTDOWN_TIMEOUT:J = 0xea60L


# instance fields
.field private args:[Ljava/lang/String;

.field private bundleContext:Lorg/osgi/framework/BundleContext;

.field private cli:Lorg/jpos/q2/CLI;

.field private decorator:Lorg/jpos/q2/ConfigDecorationProvider;

.field private deployDir:Ljava/io/File;

.field private dirMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Lorg/jpos/q2/Q2$QEntry;",
            ">;"
        }
    .end annotation
.end field

.field private disableDeployScan:Z

.field private disableDynamicClassloader:Z

.field private enableSsh:Z

.field private exit:Z

.field private factory:Lorg/jpos/q2/QFactory;

.field private hasSystemLogger:Z

.field private instanceId:Ljava/util/UUID;

.field private lastVersionLog:J

.field private libDir:Ljava/io/File;

.field private loader:Lorg/jpos/q2/QClassLoader;

.field private log:Lorg/jpos/util/Log;

.field private mainClassLoader:Ljava/lang/ClassLoader;

.field private name:Ljava/lang/String;

.field private nameRegistrarKey:Ljava/lang/String;

.field private osgiFramework:Lorg/osgi/framework/launch/Framework;

.field private pidFile:Ljava/lang/String;

.field private volatile q2Thread:Ljava/lang/Thread;

.field private ready:Ljava/util/concurrent/CountDownLatch;

.field private recursive:Z

.field private server:Ljavax/management/MBeanServer;

.field private shutdown:Ljava/util/concurrent/CountDownLatch;

.field private volatile shuttingDown:Z

.field private sshAuthorizedKeys:Ljava/lang/String;

.field private sshHostKeyFile:Ljava/lang/String;

.field private sshPort:I

.field private sshUser:Ljava/lang/String;

.field private startOSGI:Z

.field private startTime:Ljava/time/Instant;

.field private volatile started:Z

.field private watchServiceClassname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    const-string v0, "C0C73A47A5A27992267AC825F3C8B0666DF3F8A544210851821BFCC1CFA9136C"

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/jpos/q2/Q2;->PUBKEYHASH:[B

    .line 138
    const-string v0, "META-INF/q2/deploy/"

    sput-object v0, Lorg/jpos/q2/Q2;->DEPLOY_PREFIX:Ljava/lang/String;

    .line 139
    const-string v0, "META-INF/q2/cfg/"

    sput-object v0, Lorg/jpos/q2/Q2;->CFG_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 164
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jpos/q2/Q2;-><init>([Ljava/lang/String;Lorg/osgi/framework/BundleContext;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "deployDir"    # Ljava/lang/String;

    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jpos/q2/Q2;-><init>([Ljava/lang/String;Lorg/osgi/framework/BundleContext;)V

    .line 168
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jpos/q2/Q2;-><init>([Ljava/lang/String;Lorg/osgi/framework/BundleContext;)V

    .line 171
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/osgi/framework/BundleContext;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "bundleContext"    # Lorg/osgi/framework/BundleContext;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/jpos/q2/Q2;->ready:Ljava/util/concurrent/CountDownLatch;

    .line 113
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/jpos/q2/Q2;->shutdown:Ljava/util/concurrent/CountDownLatch;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/Q2;->decorator:Lorg/jpos/q2/ConfigDecorationProvider;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/q2/Q2;->startOSGI:Z

    .line 128
    const-string v0, "Q2"

    iput-object v0, p0, Lorg/jpos/q2/Q2;->name:Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lorg/jpos/q2/Q2;->args:[Ljava/lang/String;

    .line 145
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/Q2;->startTime:Ljava/time/Instant;

    .line 146
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/Q2;->instanceId:Ljava/util/UUID;

    .line 147
    invoke-direct {p0, p1}, Lorg/jpos/q2/Q2;->parseCmdLine([Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/q2/Q2;->libDir:Ljava/io/File;

    .line 149
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/q2/Q2;->dirMap:Ljava/util/Map;

    .line 150
    iget-object v0, p0, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/Q2;->mainClassLoader:Ljava/lang/ClassLoader;

    .line 152
    iput-object p2, p0, Lorg/jpos/q2/Q2;->bundleContext:Lorg/osgi/framework/BundleContext;

    .line 154
    :try_start_0
    invoke-static {}, Lorg/jpos/util/slf4j/Slf4JDynamicBinder;->applyMods()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 159
    .local v0, "ignored":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .end local v0    # "ignored":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->registerQ2()V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lorg/jpos/q2/Q2;)Ljavax/management/MBeanServer;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/Q2;

    .line 86
    iget-object v0, p0, Lorg/jpos/q2/Q2;->server:Ljavax/management/MBeanServer;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jpos/q2/Q2;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/Q2;

    .line 86
    iget-object v0, p0, Lorg/jpos/q2/Q2;->libDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jpos/q2/Q2;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/Q2;

    .line 86
    iget-object v0, p0, Lorg/jpos/q2/Q2;->mainClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$302(Lorg/jpos/q2/Q2;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/jpos/q2/Q2;
    .param p1, "x1"    # Z

    .line 86
    iput-boolean p1, p0, Lorg/jpos/q2/Q2;->shuttingDown:Z

    return p1
.end method

.method static synthetic access$400(Lorg/jpos/q2/Q2;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/Q2;

    .line 86
    iget-object v0, p0, Lorg/jpos/q2/Q2;->shutdown:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jpos/q2/Q2;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/Q2;

    .line 86
    iget-object v0, p0, Lorg/jpos/q2/Q2;->q2Thread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jpos/q2/Q2;)Lorg/jpos/util/Log;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/Q2;

    .line 86
    iget-object v0, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    return-object v0
.end method

.method private addShutdownHook()V
    .locals 3

    .line 437
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lorg/jpos/q2/Q2$2;

    const-string v2, "Q2-ShutdownHook"

    invoke-direct {v1, p0, v2}, Lorg/jpos/q2/Q2$2;-><init>(Lorg/jpos/q2/Q2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 459
    return-void
.end method

.method private checkModified()V
    .locals 7

    .line 462
    iget-object v0, p0, Lorg/jpos/q2/Q2;->dirMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 463
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 465
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 466
    .local v2, "f":Ljava/io/File;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/q2/Q2$QEntry;

    .line 467
    .local v3, "qentry":Lorg/jpos/q2/Q2$QEntry;
    invoke-virtual {v3}, Lorg/jpos/q2/Q2$QEntry;->isQBean()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/jpos/q2/Q2$QEntry;->isQPersist()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 468
    invoke-virtual {v3}, Lorg/jpos/q2/Q2$QEntry;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v4

    .line 469
    .local v4, "name":Ljavax/management/ObjectName;
    invoke-direct {p0, v4}, Lorg/jpos/q2/Q2;->getState(Ljavax/management/ObjectName;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    invoke-direct {p0, v4}, Lorg/jpos/q2/Q2;->isModified(Ljavax/management/ObjectName;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 470
    invoke-direct {p0, v2, v4}, Lorg/jpos/q2/Q2;->persist(Ljava/io/File;Ljavax/management/ObjectName;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/jpos/q2/Q2$QEntry;->setDeployed(J)V

    .line 473
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "qentry":Lorg/jpos/q2/Q2$QEntry;
    .end local v4    # "name":Ljavax/management/ObjectName;
    :cond_0
    goto :goto_0

    .line 474
    :cond_1
    return-void
.end method

.method private copyResourceToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1194
    .local v0, "source":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1196
    .local v1, "output":Ljava/io/FileOutputStream;
    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    .line 1197
    .local v2, "buffer":[B
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "n":I
    if-eq v3, v4, :cond_0

    .line 1198
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1200
    .end local v2    # "buffer":[B
    .end local v5    # "n":I
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1201
    .end local v1    # "output":Ljava/io/FileOutputStream;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1202
    .end local v0    # "source":Ljava/io/InputStream;
    :cond_1
    return-void

    .line 1194
    .restart local v0    # "source":Ljava/io/InputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "source":Ljava/io/InputStream;
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .end local p1    # "resource":Ljava/lang/String;
    .end local p2    # "destination":Ljava/io/File;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1200
    .restart local v0    # "source":Ljava/io/InputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    .restart local p1    # "resource":Ljava/lang/String;
    .restart local p2    # "destination":Ljava/io/File;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "source":Ljava/io/InputStream;
    .end local p1    # "resource":Ljava/lang/String;
    .end local p2    # "destination":Ljava/io/File;
    :goto_1
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1193
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "source":Ljava/io/InputStream;
    .restart local p1    # "resource":Ljava/lang/String;
    .restart local p2    # "destination":Ljava/io/File;
    :catchall_3
    move-exception v1

    .end local v0    # "source":Ljava/io/InputStream;
    .end local p1    # "resource":Ljava/lang/String;
    .end local p2    # "destination":Ljava/io/File;
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1201
    .restart local v0    # "source":Ljava/io/InputStream;
    .restart local p1    # "resource":Ljava/lang/String;
    .restart local p2    # "destination":Ljava/io/File;
    :catchall_4
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v2
.end method

.method private createSAXBuilder()Lorg/jdom2/input/SAXBuilder;
    .locals 3

    .line 1002
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    .line 1003
    .local v0, "builder":Lorg/jdom2/input/SAXBuilder;
    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/jdom2/input/SAXBuilder;->setFeature(Ljava/lang/String;Z)V

    .line 1004
    const-string v1, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v0, v1, v2}, Lorg/jdom2/input/SAXBuilder;->setFeature(Ljava/lang/String;Z)V

    .line 1005
    return-object v0
.end method

.method private deleteFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "f"    # Ljava/io/File;
    .param p2, "iuuid"    # Ljava/lang/String;

    .line 942
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 943
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "Deleted transient descriptor %s (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 944
    return-void
.end method

.method private deploy()V
    .locals 10

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v0, "startList":Ljava/util/List;, "Ljava/util/List<Ljavax/management/ObjectInstance;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v1, "osgiBundelList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v2, p0, Lorg/jpos/q2/Q2;->dirMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 391
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/io/File;Lorg/jpos/q2/Q2$QEntry;>;>;"
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/jpos/q2/Q2;->shutdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 392
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 393
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Lorg/jpos/q2/Q2$QEntry;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 394
    .local v4, "f":Ljava/io/File;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jpos/q2/Q2$QEntry;

    .line 395
    .local v7, "qentry":Lorg/jpos/q2/Q2$QEntry;
    invoke-virtual {v7}, Lorg/jpos/q2/Q2$QEntry;->getDeployed()J

    move-result-wide v8

    .line 396
    .local v8, "deployed":J
    cmp-long v5, v8, v5

    if-nez v5, :cond_3

    .line 397
    invoke-virtual {v7}, Lorg/jpos/q2/Q2$QEntry;->isOSGIBundle()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 398
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lorg/jpos/q2/Q2$QEntry;->setDeployed(J)V

    goto :goto_1

    .line 401
    :cond_0
    invoke-direct {p0, v4}, Lorg/jpos/q2/Q2;->deploy(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 402
    invoke-virtual {v7}, Lorg/jpos/q2/Q2$QEntry;->isQBean()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 403
    invoke-virtual {v7}, Lorg/jpos/q2/Q2$QEntry;->getInstance()Ljavax/management/ObjectInstance;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lorg/jpos/q2/Q2$QEntry;->setDeployed(J)V

    goto :goto_1

    .line 407
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 409
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v5, v8, v5

    if-eqz v5, :cond_4

    .line 410
    invoke-direct {p0, v4}, Lorg/jpos/q2/Q2;->undeploy(Ljava/io/File;)V

    .line 411
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 412
    iget-object v5, p0, Lorg/jpos/q2/Q2;->loader:Lorg/jpos/q2/QClassLoader;

    invoke-virtual {v5}, Lorg/jpos/q2/QClassLoader;->forceNewClassLoaderOnNextScan()V

    .line 414
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Lorg/jpos/q2/Q2$QEntry;>;"
    .end local v4    # "f":Ljava/io/File;
    .end local v7    # "qentry":Lorg/jpos/q2/Q2$QEntry;
    .end local v8    # "deployed":J
    :cond_4
    :goto_1
    goto :goto_0

    .line 415
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 416
    .restart local v4    # "f":Ljava/io/File;
    invoke-direct {p0, v4}, Lorg/jpos/q2/Q2;->registerOSGIBundle(Ljava/io/File;)Z

    goto :goto_2

    .line 417
    .end local v4    # "f":Ljava/io/File;
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/management/ObjectInstance;

    .line 418
    .local v4, "instance":Ljavax/management/ObjectInstance;
    invoke-direct {p0, v4}, Lorg/jpos/q2/Q2;->start(Ljavax/management/ObjectInstance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "instance":Ljavax/management/ObjectInstance;
    goto :goto_3

    .line 422
    :cond_7
    goto :goto_4

    .line 420
    :catch_0
    move-exception v3

    .line 421
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    const-string v5, "deploy"

    invoke-virtual {v4, v5, v3}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 423
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private deploy(Ljava/io/File;)Z
    .locals 10
    .param p1, "f"    # Ljava/io/File;

    .line 561
    iget-object v0, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jpos/util/Log;->createInfo()Lorg/jpos/util/LogEvent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 563
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/jpos/q2/Q2;->dirMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/q2/Q2$QEntry;

    .line 564
    .local v2, "qentry":Lorg/jpos/q2/Q2$QEntry;
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->createSAXBuilder()Lorg/jdom2/input/SAXBuilder;

    move-result-object v3

    .line 566
    .local v3, "builder":Lorg/jdom2/input/SAXBuilder;
    iget-object v4, p0, Lorg/jpos/q2/Q2;->decorator:Lorg/jpos/q2/ConfigDecorationProvider;

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "00_logger.xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 568
    new-instance v4, Ljava/io/StringReader;

    iget-object v5, p0, Lorg/jpos/q2/Q2;->decorator:Lorg/jpos/q2/ConfigDecorationProvider;

    invoke-interface {v5, p1}, Lorg/jpos/q2/ConfigDecorationProvider;->decorateFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/Reader;)Lorg/jdom2/Document;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jpos/q2/Q2;->decrypt(Lorg/jdom2/Document;)Lorg/jdom2/Document;

    move-result-object v4

    .local v4, "doc":Lorg/jdom2/Document;
    goto :goto_1

    .line 572
    .end local v4    # "doc":Lorg/jdom2/Document;
    :cond_1
    invoke-virtual {v3, p1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/File;)Lorg/jdom2/Document;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jpos/q2/Q2;->decrypt(Lorg/jdom2/Document;)Lorg/jdom2/Document;

    move-result-object v4

    .line 575
    .restart local v4    # "doc":Lorg/jdom2/Document;
    :goto_1
    invoke-virtual {v4}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v5

    .line 576
    .local v5, "rootElement":Lorg/jdom2/Element;
    const-string v6, "instance"

    invoke-virtual {v5, v6}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 577
    .local v6, "iuuid":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 578
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    .line 579
    .local v7, "uuid":Ljava/util/UUID;
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getInstanceId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 580
    invoke-direct {p0, p1, v6}, Lorg/jpos/q2/Q2;->deleteFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/InstanceAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    nop

    .line 625
    if-eqz v0, :cond_2

    .line 626
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 581
    :cond_2
    return v1

    .line 584
    .end local v7    # "uuid":Ljava/util/UUID;
    :cond_3
    :try_start_1
    invoke-static {v5}, Lorg/jpos/q2/QFactory;->isEnabled(Lorg/jdom2/Element;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 585
    if-eqz v0, :cond_4

    .line 586
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deploy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 587
    :cond_4
    iget-object v7, p0, Lorg/jpos/q2/Q2;->factory:Lorg/jpos/q2/QFactory;

    invoke-virtual {v7, p0, v5}, Lorg/jpos/q2/QFactory;->instantiate(Lorg/jpos/q2/Q2;Lorg/jdom2/Element;)Ljava/lang/Object;

    move-result-object v7

    .line 588
    .local v7, "obj":Ljava/lang/Object;
    invoke-virtual {v2, v7}, Lorg/jpos/q2/Q2$QEntry;->setObject(Ljava/lang/Object;)V

    .line 590
    iget-object v8, p0, Lorg/jpos/q2/Q2;->factory:Lorg/jpos/q2/QFactory;

    .line 591
    invoke-virtual {v4}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v9

    .line 590
    invoke-virtual {v8, p0, v9, v7}, Lorg/jpos/q2/QFactory;->createQBean(Lorg/jpos/q2/Q2;Lorg/jdom2/Element;Ljava/lang/Object;)Ljavax/management/ObjectInstance;

    move-result-object v8

    .line 593
    .local v8, "instance":Ljavax/management/ObjectInstance;
    invoke-virtual {v2, v8}, Lorg/jpos/q2/Q2$QEntry;->setInstance(Ljavax/management/ObjectInstance;)V

    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "instance":Ljavax/management/ObjectInstance;
    goto :goto_2

    .line 594
    :cond_5
    if-eqz v0, :cond_6

    .line 595
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deploy ignored (enabled=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lorg/jpos/q2/QFactory;->getEnabledAttribute(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljavax/management/InstanceAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 594
    :cond_6
    :goto_2
    nop

    .line 625
    .end local v2    # "qentry":Lorg/jpos/q2/Q2$QEntry;
    .end local v3    # "builder":Lorg/jdom2/input/SAXBuilder;
    .end local v4    # "doc":Lorg/jdom2/Document;
    .end local v5    # "rootElement":Lorg/jdom2/Element;
    .end local v6    # "iuuid":Ljava/lang/String;
    :goto_3
    if-eqz v0, :cond_7

    .line 626
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 628
    :cond_7
    const/4 v1, 0x1

    return v1

    .line 625
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 618
    :catch_0
    move-exception v2

    .line 619
    .local v2, "e":Ljava/lang/Error;
    if-eqz v0, :cond_8

    .line 620
    :try_start_2
    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 621
    :cond_8
    const-string v3, "ENV"

    invoke-direct {p0, p1, v3}, Lorg/jpos/q2/Q2;->tidyFileAway(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    nop

    .line 625
    if-eqz v0, :cond_9

    .line 626
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 623
    :cond_9
    return v1

    .line 611
    .end local v2    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v2

    .line 612
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_a

    .line 613
    :try_start_3
    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 614
    :cond_a
    const-string v3, "BAD"

    invoke-direct {p0, p1, v3}, Lorg/jpos/q2/Q2;->tidyFileAway(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 616
    nop

    .line 625
    if-eqz v0, :cond_b

    .line 626
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 616
    :cond_b
    return v1

    .line 598
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 606
    .local v2, "e":Ljavax/management/InstanceAlreadyExistsException;
    :try_start_4
    const-string v3, "DUP"

    invoke-direct {p0, p1, v3}, Lorg/jpos/q2/Q2;->tidyFileAway(Ljava/io/File;Ljava/lang/String;)V

    .line 607
    if-eqz v0, :cond_c

    .line 608
    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 609
    :cond_c
    nop

    .line 625
    if-eqz v0, :cond_d

    .line 626
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 609
    :cond_d
    return v1

    .line 625
    .end local v2    # "e":Ljavax/management/InstanceAlreadyExistsException;
    :goto_4
    if-eqz v0, :cond_e

    .line 626
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 627
    :cond_e
    throw v1
.end method

.method private deployBundle(Ljava/io/File;Z)V
    .locals 8
    .param p1, "bundle"    # Ljava/io/File;
    .param p2, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 800
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->createSAXBuilder()Lorg/jdom2/input/SAXBuilder;

    move-result-object v0

    .line 801
    .local v0, "builder":Lorg/jdom2/input/SAXBuilder;
    invoke-virtual {v0, p1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/File;)Lorg/jdom2/Document;

    move-result-object v1

    .line 802
    .local v1, "doc":Lorg/jdom2/Document;
    invoke-virtual {v1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 803
    .local v2, "iter":Ljava/util/Iterator;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 804
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Element;

    .line 805
    .local v4, "e":Lorg/jdom2/Element;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "%02d_%s.xml"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    xor-int/lit8 v6, p2, 0x1

    invoke-virtual {p0, v4, v5, p2, v6}, Lorg/jpos/q2/Q2;->deployElement(Lorg/jdom2/Element;Ljava/lang/String;ZZ)V

    .line 803
    .end local v4    # "e":Lorg/jdom2/Element;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 811
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method private deployInternal()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom2/JDOMException;,
            Lorg/xml/sax/SAXException;,
            Lorg/jpos/iso/ISOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1170
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->extractCfg()V

    .line 1171
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->extractDeploy()V

    .line 1172
    return-void
.end method

.method private deployResource(Ljava/lang/String;)V
    .locals 7
    .param p1, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/jdom2/JDOMException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 1206
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    .line 1207
    .local v0, "builder":Lorg/jdom2/input/SAXBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1208
    .local v1, "source":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom2/Document;

    move-result-object v2

    .line 1209
    .local v2, "doc":Lorg/jdom2/Document;
    invoke-virtual {v2}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v3

    sget-object v4, Lorg/jpos/q2/Q2;->DEPLOY_PREFIX:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/jpos/q2/Q2;->deployElement(Lorg/jdom2/Element;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    .end local v2    # "doc":Lorg/jdom2/Document;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1211
    .end local v1    # "source":Ljava/io/InputStream;
    :cond_0
    return-void

    .line 1207
    .restart local v1    # "source":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "builder":Lorg/jdom2/input/SAXBuilder;
    .end local v1    # "source":Ljava/io/InputStream;
    .end local p1    # "resource":Ljava/lang/String;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1210
    .restart local v0    # "builder":Lorg/jdom2/input/SAXBuilder;
    .restart local v1    # "source":Ljava/io/InputStream;
    .restart local p1    # "resource":Ljava/lang/String;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3
.end method

.method private dodes([BI)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 840
    const-string v0, "DES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 841
    .local v1, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getKey()[B

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 842
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method private extractCfg()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1174
    sget-object v0, Lorg/jpos/q2/Q2;->CFG_PREFIX:Ljava/lang/String;

    invoke-static {v0}, Lorg/jpos/q2/install/ModuleUtils;->getModuleEntries(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1175
    .local v0, "resources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "cfg"

    if-lez v1, :cond_0

    .line 1176
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1177
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1178
    .local v3, "resource":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    sget-object v5, Lorg/jpos/q2/Q2;->CFG_PREFIX:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lorg/jpos/q2/Q2;->copyResourceToFile(Ljava/lang/String;Ljava/io/File;)V

    .end local v3    # "resource":Ljava/lang/String;
    goto :goto_0

    .line 1179
    :cond_1
    return-void
.end method

.method private extractDeploy()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom2/JDOMException;,
            Lorg/xml/sax/SAXException;,
            Lorg/jpos/iso/ISOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1181
    sget-object v0, Lorg/jpos/q2/Q2;->DEPLOY_PREFIX:Ljava/lang/String;

    invoke-static {v0}, Lorg/jpos/q2/install/ModuleUtils;->getModuleEntries(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1182
    .local v0, "qbeans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1183
    .local v2, "resource":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1184
    invoke-direct {p0, v2}, Lorg/jpos/q2/Q2;->deployResource(Ljava/lang/String;)V

    goto :goto_1

    .line 1186
    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lorg/jpos/q2/Q2;->DEPLOY_PREFIX:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cfg"

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lorg/jpos/q2/Q2;->copyResourceToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 1188
    .end local v2    # "resource":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1189
    :cond_1
    return-void
.end method

.method public static getAppVersionString()Ljava/lang/String;
    .locals 7

    .line 1029
    const-string v0, "revision"

    :try_start_0
    const-string v1, "buildinfo"

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 1030
    .local v1, "buildinfo":Ljava/util/ResourceBundle;
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v2

    .line 1032
    .local v2, "revision":Ljava/util/ResourceBundle;
    const-string v3, "%s %s %s/%s (%s)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "projectName"

    .line 1033
    invoke-virtual {v1, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "version"

    .line 1034
    invoke-virtual {v1, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "branch"

    .line 1035
    invoke-virtual {v2, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 1036
    invoke-virtual {v2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x4

    const-string v5, "buildTimestamp"

    .line 1037
    invoke-virtual {v1, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1032
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1039
    .end local v1    # "buildinfo":Ljava/util/ResourceBundle;
    .end local v2    # "revision":Ljava/util/ResourceBundle;
    :catch_0
    move-exception v0

    .line 1040
    .local v0, "ignored":Ljava/util/MissingResourceException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getBranch()Ljava/lang/String;
    .locals 2

    .line 1019
    const-string v0, "org/jpos/q2/revision"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "branch"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuildTimestamp()Ljava/lang/String;
    .locals 2

    .line 1022
    const-string v0, "org/jpos/q2/buildinfo"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "buildTimestamp"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLicensee()Ljava/lang/String;
    .locals 2

    .line 709
    const/4 v0, 0x0

    .line 711
    .local v0, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/jpos/util/PGPHelper;->getLicensee()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 714
    goto :goto_0

    .line 712
    :catch_0
    move-exception v1

    .line 715
    :goto_0
    return-object v0
.end method

.method public static getQ2()Lorg/jpos/q2/Q2;
    .locals 1

    .line 357
    const-string v0, "Q2"

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->getIfExists(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/q2/Q2;

    return-object v0
.end method

.method public static getQ2(J)Lorg/jpos/q2/Q2;
    .locals 1
    .param p0, "timeout"    # J

    .line 360
    const-string v0, "Q2"

    invoke-static {v0, p0, p1}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/q2/Q2;

    return-object v0
.end method

.method public static getRelease()Ljava/lang/String;
    .locals 2

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/jpos/q2/Q2;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/jpos/q2/Q2;->getRevision()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRevision()Ljava/lang/String;
    .locals 2

    .line 1016
    const-string v0, "org/jpos/q2/revision"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "revision"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getState(Ljavax/management/ObjectName;)I
    .locals 4
    .param p1, "name"    # Ljavax/management/ObjectName;

    .line 477
    const/4 v0, -0x1

    .line 478
    .local v0, "status":I
    if-eqz p1, :cond_0

    .line 480
    :try_start_0
    iget-object v1, p0, Lorg/jpos/q2/Q2;->server:Ljavax/management/MBeanServer;

    const-string v2, "State"

    invoke-interface {v1, p1, v2}, Ljavax/management/MBeanServer;->getAttribute(Ljavax/management/ObjectName;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 483
    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    const-string v3, "getState"

    invoke-virtual {v2, v3, v1}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 485
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    .line 1013
    const-string v0, "org/jpos/q2/buildinfo"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionString()Ljava/lang/String;
    .locals 13

    .line 685
    invoke-static {}, Lorg/jpos/q2/Q2;->getAppVersionString()Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-static {}, Lorg/jpos/util/PGPHelper;->checkLicense()I

    move-result v1

    .line 687
    .local v1, "l":I
    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 688
    .local v2, "sl":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .local v3, "vs":Ljava/lang/StringBuilder;
    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x6

    if-eqz v0, :cond_1

    .line 690
    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    .line 692
    invoke-static {}, Lorg/jpos/q2/Q2;->getVersion()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {}, Lorg/jpos/q2/Q2;->getBranch()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v8

    invoke-static {}, Lorg/jpos/q2/Q2;->getRevision()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v7

    aput-object v2, v11, v6

    invoke-static {}, Lorg/jpos/q2/Q2;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v5

    aput-object v0, v11, v4

    invoke-static {}, Lorg/jpos/q2/Q2;->getLicensee()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v10

    .line 691
    const-string v4, "jPOS %s %s/%s%s (%s)%n%s%s"

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 690
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 696
    :cond_1
    new-array v10, v10, [Ljava/lang/Object;

    .line 698
    invoke-static {}, Lorg/jpos/q2/Q2;->getVersion()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {}, Lorg/jpos/q2/Q2;->getBranch()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v8

    invoke-static {}, Lorg/jpos/q2/Q2;->getRevision()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v7

    aput-object v2, v10, v6

    invoke-static {}, Lorg/jpos/q2/Q2;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v5

    invoke-static {}, Lorg/jpos/q2/Q2;->getLicensee()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    .line 697
    const-string v4, "jPOS %s %s/%s%s (%s) %s"

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private initConfigDecorator()V
    .locals 7

    .line 948
    const-class v0, Lorg/jpos/q2/Q2;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "META-INF/org/jpos/config/Q2-decorator.properties"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 951
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_3

    .line 953
    :try_start_0
    new-instance v2, Ljava/util/PropertyResourceBundle;

    invoke-direct {v2, v1}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V

    .line 954
    .local v2, "bundle":Ljava/util/PropertyResourceBundle;
    const-string v3, "config-decorator-class"

    invoke-virtual {v2, v3}, Ljava/util/PropertyResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 955
    .local v3, "ccdClass":Ljava/lang/String;
    iget-object v4, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initializing config decoration provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 956
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/q2/ConfigDecorationProvider;

    iput-object v0, p0, Lorg/jpos/q2/Q2;->decorator:Lorg/jpos/q2/ConfigDecorationProvider;

    .line 957
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getDeployDir()Ljava/io/File;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/jpos/q2/ConfigDecorationProvider;->initialize(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 974
    .end local v2    # "bundle":Ljava/util/PropertyResourceBundle;
    .end local v3    # "ccdClass":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 964
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 969
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 974
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_4

    .line 978
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    .line 974
    :goto_1
    if-eqz v1, :cond_2

    .line 978
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 983
    goto :goto_2

    .line 980
    :catch_1
    move-exception v2

    .line 985
    :cond_2
    :goto_2
    throw v0

    .line 960
    :catch_2
    move-exception v0

    .line 974
    if-eqz v1, :cond_4

    .line 978
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 974
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 978
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 983
    :goto_4
    goto :goto_5

    .line 980
    :catch_3
    move-exception v0

    goto :goto_4

    .line 986
    :cond_4
    :goto_5
    return-void
.end method

.method private initSystemLogger()V
    .locals 5

    .line 647
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    const-string v2, "00_logger.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 648
    .local v0, "loggerConfig":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jpos/q2/Q2;->hasSystemLogger:Z

    .line 651
    :try_start_0
    invoke-direct {p0, v0}, Lorg/jpos/q2/Q2;->register(Ljava/io/File;)Z

    .line 652
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->deploy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    goto :goto_0

    .line 653
    :catch_0
    move-exception v1

    .line 654
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    const-string v3, "init-system-logger"

    invoke-virtual {v2, v3, v1}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 657
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-static {}, Lorg/jpos/core/Environment;->getEnvironment()Lorg/jpos/core/Environment;

    move-result-object v1

    .line 658
    .local v1, "env":Lorg/jpos/core/Environment;
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Q2 started, deployDir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", environment="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jpos/core/Environment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 659
    invoke-virtual {v1}, Lorg/jpos/core/Environment;->getErrorString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 660
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jpos/core/Environment;->getErrorString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 662
    :cond_1
    return-void
.end method

.method private isBundle(Ljava/io/File;)Z
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    .line 367
    iget-object v0, p0, Lorg/jpos/q2/Q2;->osgiFramework:Lorg/osgi/framework/launch/Framework;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isModified(Ljavax/management/ObjectName;)Z
    .locals 3
    .param p1, "name"    # Ljavax/management/ObjectName;

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "modified":Z
    if-eqz p1, :cond_0

    .line 491
    :try_start_0
    iget-object v1, p0, Lorg/jpos/q2/Q2;->server:Ljavax/management/MBeanServer;

    const-string v2, "Modified"

    invoke-interface {v1, p1, v2}, Ljavax/management/MBeanServer;->getAttribute(Ljavax/management/ObjectName;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 494
    goto :goto_0

    .line 492
    :catch_0
    move-exception v1

    .line 496
    :cond_0
    :goto_0
    return v0
.end method

.method private isXml(Ljava/io/File;)Z
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    .line 364
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logVersion()V
    .locals 6

    .line 988
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 989
    .local v0, "now":J
    iget-wide v2, p0, Lorg/jpos/q2/Q2;->lastVersionLog:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 990
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v2, v3}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;)Lorg/jpos/util/LogEvent;

    move-result-object v2

    .line 991
    .local v2, "evt":Lorg/jpos/util/LogEvent;
    invoke-static {}, Lorg/jpos/q2/Q2;->getVersionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 992
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 993
    iput-wide v0, p0, Lorg/jpos/q2/Q2;->lastVersionLog:J

    .line 994
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->running()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lorg/jpos/util/PGPHelper;->checkLicense()I

    move-result v3

    const/high16 v4, 0xf0000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 995
    const-wide/32 v3, 0xea60

    invoke-virtual {p0, v3, v4}, Lorg/jpos/q2/Q2;->relax(J)V

    goto :goto_0

    .line 997
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    :cond_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1008
    new-instance v0, Lorg/jpos/q2/Q2;

    invoke-direct {v0, p0}, Lorg/jpos/q2/Q2;-><init>([Ljava/lang/String;)V

    .line 1009
    .local v0, "q2":Lorg/jpos/q2/Q2;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/jpos/q2/Q2;->setExit(Z)V

    .line 1010
    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->start()V

    .line 1011
    return-void
.end method

.method private parseCmdLine([Ljava/lang/String;)V
    .locals 25
    .param p1, "args"    # [Ljava/lang/String;

    .line 718
    move-object/from16 v1, p0

    new-instance v0, Lorg/apache/commons/cli/DefaultParser;

    invoke-direct {v0}, Lorg/apache/commons/cli/DefaultParser;-><init>()V

    move-object v2, v0

    .line 720
    .local v2, "parser":Lorg/apache/commons/cli/CommandLineParser;
    new-instance v0, Lorg/apache/commons/cli/Options;

    invoke-direct {v0}, Lorg/apache/commons/cli/Options;-><init>()V

    move-object v3, v0

    .line 721
    .local v3, "options":Lorg/apache/commons/cli/Options;
    const-string v0, "v"

    const-string v4, "version"

    const/4 v5, 0x0

    const-string v6, "Q2\'s version"

    invoke-virtual {v3, v0, v4, v5, v6}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 722
    const-string v4, "d"

    const-string v6, "deploydir"

    const/4 v7, 0x1

    const-string v8, "Deployment directory"

    invoke-virtual {v3, v4, v6, v7, v8}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 723
    const-string v6, "r"

    const-string v8, "recursive"

    const-string v9, "Deploy subdirectories recursively"

    invoke-virtual {v3, v6, v8, v5, v9}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 724
    const-string v8, "h"

    const-string v9, "help"

    const-string v10, "Usage information"

    invoke-virtual {v3, v8, v9, v5, v10}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 725
    const-string v9, "C"

    const-string v10, "config"

    const-string v11, "Configuration bundle"

    invoke-virtual {v3, v9, v10, v7, v11}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 726
    const-string v10, "e"

    const-string v11, "encrypt"

    const-string v12, "Encrypt configuration bundle"

    invoke-virtual {v3, v10, v11, v7, v12}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 727
    const-string v11, "i"

    const-string v12, "cli"

    const-string v13, "Command Line Interface"

    invoke-virtual {v3, v11, v12, v5, v13}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 728
    const-string v12, "c"

    const-string v13, "command"

    const-string v14, "Command to execute"

    invoke-virtual {v3, v12, v13, v7, v14}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 729
    const-string v13, "O"

    const-string v14, "osgi"

    const-string v15, "Start experimental OSGi framework server"

    invoke-virtual {v3, v13, v14, v5, v15}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 730
    const-string v14, "p"

    const-string v15, "pid-file"

    const-string v5, "Store project\'s pid"

    invoke-virtual {v3, v14, v15, v7, v5}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 731
    const-string v5, "n"

    const-string v15, "name"

    move-object/from16 v16, v14

    const-string v14, "Optional name (defaults to \'Q2\')"

    invoke-virtual {v3, v5, v15, v7, v14}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 732
    const-string v14, "s"

    const-string v15, "ssh"

    const-string v7, "Enable SSH server"

    move-object/from16 v17, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v14, v15, v5, v7}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 733
    const-string v5, "sp"

    const-string v7, "ssh-port"

    const-string v15, "SSH port (defaults to 2222)"

    move-object/from16 v18, v14

    const/4 v14, 0x1

    invoke-virtual {v3, v5, v7, v14, v15}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 734
    const-string v7, "sa"

    const-string v15, "ssh-authorized-keys"

    move-object/from16 v19, v5

    const-string v5, "Path to authorized key file (defaults to \'cfg/authorized_keys\')"

    invoke-virtual {v3, v7, v15, v14, v5}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 735
    const-string v5, "su"

    const-string v15, "ssh-user"

    move-object/from16 v20, v7

    const-string v7, "SSH user (defaults to \'admin\')"

    invoke-virtual {v3, v5, v15, v14, v7}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 736
    const-string v7, "sh"

    const-string v15, "ssh-host-key-file"

    move-object/from16 v21, v5

    const-string v5, "SSH host key file, defaults to \'cfg/hostkeys.ser\'"

    invoke-virtual {v3, v7, v15, v14, v5}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 737
    const-string v5, "Ns"

    const-string v14, "no-scan"

    const-string v15, "Disables deploy directory scan"

    move-object/from16 v22, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v14, v7, v15}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 738
    const-string v14, "Nd"

    const-string v15, "no-dynamic"

    move-object/from16 v23, v5

    const-string v5, "Disables dynamic classloader"

    invoke-virtual {v3, v14, v15, v7, v5}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 739
    const-string v5, "E"

    const-string v7, "environment"

    const-string v15, "Environment name"

    move-object/from16 v24, v14

    const/4 v14, 0x1

    invoke-virtual {v3, v5, v7, v14, v15}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 742
    move-object/from16 v7, p1

    :try_start_0
    invoke-interface {v2, v3, v7}, Lorg/apache/commons/cli/CommandLineParser;->parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;

    move-result-object v14

    .line 743
    .local v14, "line":Lorg/apache/commons/cli/CommandLine;
    invoke-virtual {v14, v0}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/q2/Q2;->displayVersion()V

    .line 745
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 747
    :cond_0
    invoke-virtual {v14, v8}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    new-instance v0, Lorg/apache/commons/cli/HelpFormatter;

    invoke-direct {v0}, Lorg/apache/commons/cli/HelpFormatter;-><init>()V

    .line 749
    .local v0, "helpFormatter":Lorg/apache/commons/cli/HelpFormatter;
    const-string v8, "Q2"

    invoke-virtual {v0, v8, v3}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(Ljava/lang/String;Lorg/apache/commons/cli/Options;)V

    .line 750
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 752
    .end local v0    # "helpFormatter":Lorg/apache/commons/cli/HelpFormatter;
    :cond_1
    invoke-virtual {v14, v12}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 753
    new-instance v0, Lorg/jpos/q2/CLI;

    invoke-virtual {v14, v12}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v11}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v11

    invoke-direct {v0, v1, v8, v11}, Lorg/jpos/q2/CLI;-><init>(Lorg/jpos/q2/Q2;Ljava/lang/String;Z)V

    iput-object v0, v1, Lorg/jpos/q2/Q2;->cli:Lorg/jpos/q2/CLI;

    goto :goto_0

    .line 754
    :cond_2
    invoke-virtual {v14, v11}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 755
    new-instance v0, Lorg/jpos/q2/CLI;

    const/4 v8, 0x0

    const/4 v11, 0x1

    invoke-direct {v0, v1, v8, v11}, Lorg/jpos/q2/CLI;-><init>(Lorg/jpos/q2/Q2;Ljava/lang/String;Z)V

    iput-object v0, v1, Lorg/jpos/q2/Q2;->cli:Lorg/jpos/q2/CLI;

    .line 757
    :cond_3
    :goto_0
    const-string v0, "deploy"

    .line 758
    .local v0, "dir":Ljava/lang/String;
    invoke-virtual {v14, v4}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 759
    invoke-virtual {v14, v4}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 760
    :cond_4
    iget-object v4, v1, Lorg/jpos/q2/Q2;->cli:Lorg/jpos/q2/CLI;

    if-eqz v4, :cond_5

    .line 761
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "-cli"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 762
    :cond_5
    :goto_1
    invoke-virtual {v14, v6}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/jpos/q2/Q2;->recursive:Z

    .line 763
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    .line 764
    invoke-virtual {v14, v9}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 765
    new-instance v4, Ljava/io/File;

    invoke-virtual {v14, v9}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v1, v4, v6}, Lorg/jpos/q2/Q2;->deployBundle(Ljava/io/File;Z)V

    .line 766
    :cond_6
    invoke-virtual {v14, v10}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 767
    new-instance v4, Ljava/io/File;

    invoke-virtual {v14, v10}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-direct {v1, v4, v6}, Lorg/jpos/q2/Q2;->deployBundle(Ljava/io/File;Z)V

    .line 768
    :cond_7
    invoke-virtual {v14, v13}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 769
    const/4 v4, 0x1

    iput-boolean v4, v1, Lorg/jpos/q2/Q2;->startOSGI:Z

    .line 770
    :cond_8
    move-object/from16 v4, v16

    invoke-virtual {v14, v4}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 771
    invoke-virtual {v14, v4}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/jpos/q2/Q2;->pidFile:Ljava/lang/String;

    .line 772
    :cond_9
    move-object/from16 v4, v17

    invoke-virtual {v14, v4}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 773
    invoke-virtual {v14, v4}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/jpos/q2/Q2;->name:Ljava/lang/String;

    .line 774
    :cond_a
    invoke-virtual {v14, v5}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 775
    const-string v4, "jpos.env"

    invoke-virtual {v14, v5}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 776
    invoke-static {}, Lorg/jpos/core/Environment;->getEnvironment()Lorg/jpos/core/Environment;

    .line 778
    :cond_b
    move-object/from16 v4, v23

    invoke-virtual {v14, v4}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/jpos/q2/Q2;->disableDeployScan:Z

    .line 779
    move-object/from16 v4, v24

    invoke-virtual {v14, v4}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/jpos/q2/Q2;->disableDynamicClassloader:Z

    .line 780
    move-object/from16 v4, v18

    invoke-virtual {v14, v4}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/jpos/q2/Q2;->enableSsh:Z

    .line 781
    const-string v4, "2222"

    move-object/from16 v5, v19

    invoke-virtual {v14, v5, v4}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lorg/jpos/q2/Q2;->sshPort:I

    .line 782
    const-string v4, "cfg/authorized_keys"

    move-object/from16 v5, v20

    invoke-virtual {v14, v5, v4}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/jpos/q2/Q2;->sshAuthorizedKeys:Ljava/lang/String;

    .line 783
    const-string v4, "admin"

    move-object/from16 v5, v21

    invoke-virtual {v14, v5, v4}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/jpos/q2/Q2;->sshUser:Ljava/lang/String;

    .line 784
    const-string v4, "cfg/hostkeys.ser"

    move-object/from16 v5, v22

    invoke-virtual {v14, v5, v4}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/jpos/q2/Q2;->sshHostKeyFile:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/cli/MissingArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/commons/cli/UnrecognizedOptionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "dir":Ljava/lang/String;
    .end local v14    # "line":Lorg/apache/commons/cli/CommandLine;
    goto :goto_3

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 793
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_4

    .line 788
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 789
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 790
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_3

    .line 785
    :catch_3
    move-exception v0

    .line 786
    .local v0, "e":Lorg/apache/commons/cli/MissingArgumentException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/commons/cli/MissingArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 787
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 794
    .end local v0    # "e":Lorg/apache/commons/cli/MissingArgumentException;
    :goto_3
    nop

    .line 795
    :goto_4
    return-void
.end method

.method private persist(Ljava/io/File;Ljavax/management/ObjectName;)J
    .locals 9
    .param p1, "f"    # Ljava/io/File;
    .param p2, "name"    # Ljavax/management/ObjectName;

    .line 499
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 501
    .local v0, "deployed":J
    :try_start_0
    iget-object v2, p0, Lorg/jpos/q2/Q2;->server:Ljavax/management/MBeanServer;

    const-string v3, "Persist"

    invoke-interface {v2, p2, v3}, Ljavax/management/MBeanServer;->getAttribute(Ljavax/management/ObjectName;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    .line 502
    .local v2, "e":Lorg/jdom2/Element;
    if-eqz v2, :cond_0

    .line 503
    new-instance v3, Lorg/jdom2/output/XMLOutputter;

    invoke-static {}, Lorg/jdom2/output/Format;->getPrettyFormat()Lorg/jdom2/output/Format;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;)V

    .line 504
    .local v3, "out":Lorg/jdom2/output/XMLOutputter;
    new-instance v4, Lorg/jdom2/Document;

    invoke-direct {v4}, Lorg/jdom2/Document;-><init>()V

    .line 505
    .local v4, "doc":Lorg/jdom2/Document;
    invoke-virtual {v2}, Lorg/jdom2/Element;->detach()Lorg/jdom2/Element;

    .line 506
    invoke-virtual {v4, v2}, Lorg/jdom2/Document;->setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    .line 507
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v5, "tmp":Ljava/io/File;
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .local v6, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v3, v4, v6}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Document;Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    :try_start_2
    invoke-virtual {v6}, Ljava/io/Writer;->close()V

    .line 513
    nop

    .line 514
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 515
    invoke-virtual {v5, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 516
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    move-wide v0, v7

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Ljava/io/Writer;->close()V

    .line 513
    nop

    .end local v0    # "deployed":J
    .end local p1    # "f":Ljava/io/File;
    .end local p2    # "name":Ljavax/management/ObjectName;
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 520
    .end local v2    # "e":Lorg/jdom2/Element;
    .end local v3    # "out":Lorg/jdom2/output/XMLOutputter;
    .end local v4    # "doc":Lorg/jdom2/Document;
    .end local v5    # "tmp":Ljava/io/File;
    .end local v6    # "writer":Ljava/io/Writer;
    .restart local v0    # "deployed":J
    .restart local p1    # "f":Ljava/io/File;
    .restart local p2    # "name":Ljavax/management/ObjectName;
    :cond_0
    :goto_0
    goto :goto_1

    .line 518
    :catch_0
    move-exception v2

    .line 519
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    const-string v4, "persist"

    invoke-virtual {v3, v4, v2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 521
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-wide v0
.end method

.method private register(Ljava/io/File;)Z
    .locals 6
    .param p1, "f"    # Ljava/io/File;

    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "rc":Z
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 548
    invoke-virtual {p1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 549
    .local v1, "file":[Ljava/io/File;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 550
    .local v4, "aFile":Ljava/io/File;
    invoke-direct {p0, v4}, Lorg/jpos/q2/Q2;->register(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 551
    const/4 v0, 0x1

    .line 549
    .end local v4    # "aFile":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "file":[Ljava/io/File;
    :cond_1
    goto :goto_1

    .line 553
    :cond_2
    iget-object v1, p0, Lorg/jpos/q2/Q2;->dirMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 554
    iget-object v1, p0, Lorg/jpos/q2/Q2;->dirMap:Ljava/util/Map;

    new-instance v2, Lorg/jpos/q2/Q2$QEntry;

    invoke-direct {p0, p1}, Lorg/jpos/q2/Q2;->isBundle(Ljava/io/File;)Z

    move-result v3

    invoke-direct {v2, v3}, Lorg/jpos/q2/Q2$QEntry;-><init>(Z)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const/4 v0, 0x1

    goto :goto_2

    .line 553
    :cond_3
    :goto_1
    nop

    .line 557
    :goto_2
    return v0
.end method

.method private registerOSGIBundle(Ljava/io/File;)Z
    .locals 4
    .param p1, "f"    # Ljava/io/File;

    .line 903
    iget-object v0, p0, Lorg/jpos/q2/Q2;->osgiFramework:Lorg/osgi/framework/launch/Framework;

    invoke-interface {v0}, Lorg/osgi/framework/launch/Framework;->getBundleContext()Lorg/osgi/framework/BundleContext;

    move-result-object v0

    .line 904
    .local v0, "context":Lorg/osgi/framework/BundleContext;
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "osgi"

    invoke-virtual {v1, v3, v2}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v1

    .line 906
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/osgi/framework/BundleContext;->installBundle(Ljava/lang/String;)Lorg/osgi/framework/Bundle;

    move-result-object v2

    .line 907
    .local v2, "bundle":Lorg/osgi/framework/Bundle;
    const-string v3, "registered"

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 908
    invoke-interface {v2}, Lorg/osgi/framework/Bundle;->start()V

    .line 909
    const-string v3, "started"

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/osgi/framework/BundleException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    .end local v2    # "bundle":Lorg/osgi/framework/Bundle;
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 915
    nop

    .line 916
    const/4 v2, 0x1

    return v2

    .line 914
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 910
    :catch_0
    move-exception v2

    .line 911
    .local v2, "e":Lorg/osgi/framework/BundleException;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    const/4 v3, 0x0

    .line 914
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 912
    return v3

    .line 914
    .end local v2    # "e":Lorg/osgi/framework/BundleException;
    :goto_0
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 915
    throw v2
.end method

.method private registerQ2()V
    .locals 5

    .line 1147
    const-class v0, Lorg/jpos/q2/Q2;

    monitor-enter v0

    .line 1148
    const/4 v1, 0x0

    .line 1149
    .local v1, "i":I
    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jpos/q2/Q2;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1150
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lorg/jpos/util/NameRegistrar;->getIfExists(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1151
    invoke-static {v2, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1152
    iput-object v2, p0, Lorg/jpos/q2/Q2;->nameRegistrarKey:Ljava/lang/String;

    .line 1153
    nop

    .line 1156
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    monitor-exit v0

    .line 1157
    return-void

    .line 1148
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1156
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scan()Z
    .locals 6

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "rc":Z
    iget-object v1, p0, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 373
    .local v1, "file":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 377
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 378
    .local v4, "f":Ljava/io/File;
    invoke-direct {p0, v4}, Lorg/jpos/q2/Q2;->register(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 379
    const/4 v0, 0x1

    .line 377
    .end local v4    # "f":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    :cond_1
    return v0

    .line 375
    :cond_2
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deploy directory \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setExit(Z)V
    .locals 0
    .param p1, "exit"    # Z

    .line 999
    iput-boolean p1, p0, Lorg/jpos/q2/Q2;->exit:Z

    .line 1000
    return-void
.end method

.method private start(Ljavax/management/ObjectInstance;)V
    .locals 3
    .param p1, "instance"    # Ljavax/management/ObjectInstance;

    .line 633
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/Q2;->factory:Lorg/jpos/q2/QFactory;

    invoke-virtual {p1}, Ljavax/management/ObjectInstance;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/jpos/q2/QFactory;->startQBean(Lorg/jpos/q2/Q2;Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v1, v2, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 637
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private startOSGIFramework()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .line 892
    const-class v0, Lorg/osgi/framework/launch/FrameworkFactory;

    iget-object v1, p0, Lorg/jpos/q2/Q2;->loader:Lorg/jpos/q2/QClassLoader;

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 893
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osgi/framework/launch/FrameworkFactory;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osgi/framework/launch/FrameworkFactory;

    .line 895
    .local v1, "frameworkFactory":Lorg/osgi/framework/launch/FrameworkFactory;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 896
    .local v2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, v2}, Lorg/osgi/framework/launch/FrameworkFactory;->newFramework(Ljava/util/Map;)Lorg/osgi/framework/launch/Framework;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/q2/Q2;->osgiFramework:Lorg/osgi/framework/launch/Framework;

    .line 897
    invoke-interface {v3}, Lorg/osgi/framework/launch/Framework;->start()V

    .line 898
    .end local v1    # "frameworkFactory":Lorg/osgi/framework/launch/FrameworkFactory;
    .end local v2    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 899
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    const-string v2, "OSGI framework not found"

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 901
    :goto_0
    return-void
.end method

.method private stopOSGIFramework()V
    .locals 3

    .line 919
    iget-object v0, p0, Lorg/jpos/q2/Q2;->osgiFramework:Lorg/osgi/framework/launch/Framework;

    if-eqz v0, :cond_0

    .line 921
    :try_start_0
    invoke-interface {v0}, Lorg/osgi/framework/launch/Framework;->stop()V

    .line 922
    iget-object v0, p0, Lorg/jpos/q2/Q2;->osgiFramework:Lorg/osgi/framework/launch/Framework;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/osgi/framework/launch/Framework;->waitForStop(J)Lorg/osgi/framework/FrameworkEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    goto :goto_0

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 927
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private tidyFileAway(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "f"    # Ljava/io/File;
    .param p2, "extension"    # Ljava/lang/String;

    .line 929
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 930
    .local v0, "rename":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 933
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    const-string v2, " see log above for detail of problem."

    const-string v3, " out of the way, by adding ."

    if-eqz v1, :cond_1

    .line 934
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tidying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "It will be called: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 937
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Tidying. Could not tidy  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "It could not be called: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 939
    :goto_1
    return-void
.end method

.method private undeploy()V
    .locals 4

    .line 426
    iget-object v0, p0, Lorg/jpos/q2/Q2;->dirMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 427
    .local v0, "set":[Ljava/lang/Object;
    array-length v1, v0

    .line 429
    .local v1, "l":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "l":I
    .local v2, "l":I
    if-lez v1, :cond_0

    .line 430
    aget-object v1, v0, v2

    check-cast v1, Ljava/util/Map$Entry;

    .line 431
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 432
    .local v3, "f":Ljava/io/File;
    invoke-direct {p0, v3}, Lorg/jpos/q2/Q2;->undeploy(Ljava/io/File;)V

    .line 433
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "f":Ljava/io/File;
    move v1, v2

    goto :goto_0

    .line 434
    :cond_0
    return-void
.end method

.method private undeploy(Ljava/io/File;)V
    .locals 4
    .param p1, "f"    # Ljava/io/File;

    .line 525
    iget-object v0, p0, Lorg/jpos/q2/Q2;->dirMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/q2/Q2$QEntry;

    .line 527
    .local v0, "qentry":Lorg/jpos/q2/Q2$QEntry;
    :try_start_0
    iget-object v1, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    if-eqz v1, :cond_0

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "undeploying:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->trace(Ljava/lang/Object;)V

    .line 530
    :cond_0
    invoke-virtual {v0}, Lorg/jpos/q2/Q2$QEntry;->isQBean()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    invoke-virtual {v0}, Lorg/jpos/q2/Q2$QEntry;->getObject()Ljava/lang/Object;

    move-result-object v1

    .line 532
    .local v1, "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/jpos/q2/Q2$QEntry;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v2

    .line 533
    .local v2, "name":Ljavax/management/ObjectName;
    iget-object v3, p0, Lorg/jpos/q2/Q2;->factory:Lorg/jpos/q2/QFactory;

    invoke-virtual {v3, p0, v2, v1}, Lorg/jpos/q2/QFactory;->destroyQBean(Lorg/jpos/q2/Q2;Ljavax/management/ObjectName;Ljava/lang/Object;)V

    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "name":Ljavax/management/ObjectName;
    goto :goto_0

    .line 534
    :cond_1
    invoke-virtual {v0}, Lorg/jpos/q2/Q2$QEntry;->isOSGIBundle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OSGI bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no longer available in deploy directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    goto :goto_1

    .line 534
    :cond_2
    :goto_0
    nop

    .line 537
    :goto_1
    iget-object v1, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    if-eqz v1, :cond_3

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "undeployed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :cond_3
    goto :goto_2

    .line 540
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    const-string v3, "undeploy"

    invoke-virtual {v2, v3, v1}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 543
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private unregisterQ2()V
    .locals 2

    .line 1160
    const-class v0, Lorg/jpos/q2/Q2;

    monitor-enter v0

    .line 1161
    :try_start_0
    iget-object v1, p0, Lorg/jpos/q2/Q2;->nameRegistrarKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1162
    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 1163
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jpos/q2/Q2;->nameRegistrarKey:Ljava/lang/String;

    .line 1165
    :cond_0
    monitor-exit v0

    .line 1167
    return-void

    .line 1165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private waitForChanges(Ljava/nio/file/WatchService;)Z
    .locals 9
    .param p1, "service"    # Ljava/nio/file/WatchService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1117
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x9c4

    invoke-interface {p1, v1, v2, v0}, Ljava/nio/file/WatchService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/WatchKey;

    move-result-object v0

    .line 1118
    .local v0, "key":Ljava/nio/file/WatchKey;
    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 1119
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jpos/util/Log;->createInfo()Lorg/jpos/util/LogEvent;

    move-result-object v2

    .line 1120
    .local v2, "evt":Lorg/jpos/util/LogEvent;
    invoke-interface {v0}, Ljava/nio/file/WatchKey;->pollEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/WatchEvent;

    .line 1121
    .local v4, "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    invoke-interface {v4}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v6

    sget-object v7, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    const/4 v8, 0x2

    if-ne v6, v7, :cond_0

    .line 1122
    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-interface {v4}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v6, v1

    const-string v5, "created %s/%s"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_1

    .line 1123
    :cond_0
    invoke-interface {v4}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v6

    sget-object v7, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    if-ne v6, v7, :cond_1

    .line 1124
    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-interface {v4}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v6, v1

    const-string v5, "removed %s/%s"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_1

    .line 1125
    :cond_1
    invoke-interface {v4}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v6

    sget-object v7, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne v6, v7, :cond_2

    .line 1126
    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-interface {v4}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v6, v1

    const-string v5, "modified %s/%s"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1128
    .end local v4    # "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 1129
    :cond_3
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1130
    invoke-interface {v0}, Ljava/nio/file/WatchKey;->reset()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1131
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    .line 1133
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    .line 1131
    const-string v4, "deploy directory \'%s\' no longer valid"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 1135
    return v5

    .line 1138
    :cond_4
    :try_start_0
    invoke-static {}, Lorg/jpos/core/Environment;->reload()Lorg/jpos/core/Environment;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    goto :goto_2

    .line 1139
    :catch_0
    move-exception v3

    .line 1140
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 1143
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :goto_2
    return v1
.end method

.method private writePidFile()V
    .locals 7

    .line 1093
    iget-object v0, p0, Lorg/jpos/q2/Q2;->pidFile:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1094
    return-void

    .line 1096
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jpos/q2/Q2;->pidFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1099
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Q2: pid-file (%s) is a directory%n"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/jpos/q2/Q2;->pidFile:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1100
    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 1102
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1103
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Q2: Unable to write pid-file (%s)%n"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/jpos/q2/Q2;->pidFile:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1104
    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 1106
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 1107
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1108
    .local v3, "fow":Ljava/io/FileOutputStream;
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1109
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1110
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    .end local v3    # "fow":Ljava/io/FileOutputStream;
    nop

    .line 1114
    return-void

    .line 1111
    :catch_0
    move-exception v3

    .line 1112
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/jpos/q2/Q2;->pidFile:Ljava/lang/String;

    aput-object v5, v1, v2

    const-string v2, "Unable to write pid-file (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    .line 344
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-direct {p0, p1}, Lorg/jpos/q2/Q2;->isXml(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/jpos/q2/Q2;->isBundle(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jpos/q2/Q2;->recursive:Z

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lib"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0
.end method

.method protected decrypt(Lorg/jdom2/Document;)Lorg/jdom2/Document;
    .locals 5
    .param p1, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;,
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 875
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v0

    .line 876
    .local v0, "root":Lorg/jdom2/Element;
    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "protected-qbean"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    .line 878
    .local v1, "data":Lorg/jdom2/Element;
    if-eqz v1, :cond_0

    .line 879
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 881
    invoke-virtual {v1}, Lorg/jdom2/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    .line 880
    invoke-direct {p0, v3, v4}, Lorg/jpos/q2/Q2;->dodes([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 884
    .local v2, "is":Ljava/io/ByteArrayInputStream;
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->createSAXBuilder()Lorg/jdom2/input/SAXBuilder;

    move-result-object v3

    .line 885
    .local v3, "builder":Lorg/jdom2/input/SAXBuilder;
    invoke-virtual {v3, v2}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom2/Document;

    move-result-object p1

    .line 888
    .end local v1    # "data":Lorg/jdom2/Element;
    .end local v2    # "is":Ljava/io/ByteArrayInputStream;
    .end local v3    # "builder":Lorg/jdom2/input/SAXBuilder;
    :cond_0
    return-object p1
.end method

.method public deployElement(Lorg/jdom2/Element;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "e"    # Lorg/jdom2/Element;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "encrypt"    # Z
    .param p4, "isTransient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;,
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 815
    invoke-virtual {p1}, Lorg/jdom2/Element;->clone()Lorg/jdom2/Element;

    move-result-object p1

    .line 817
    new-instance v0, Lorg/jdom2/output/XMLOutputter;

    invoke-static {}, Lorg/jdom2/output/Format;->getPrettyFormat()Lorg/jdom2/output/Format;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;)V

    .line 818
    .local v0, "out":Lorg/jdom2/output/XMLOutputter;
    new-instance v1, Lorg/jdom2/Document;

    invoke-direct {v1}, Lorg/jdom2/Document;-><init>()V

    .line 819
    .local v1, "doc":Lorg/jdom2/Document;
    invoke-virtual {v1, p1}, Lorg/jdom2/Document;->setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    .line 820
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 821
    .local v2, "qbean":Ljava/io/File;
    if-eqz p4, :cond_0

    .line 822
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getInstanceId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "instance"

    invoke-virtual {p1, v4, v3}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    .line 823
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 825
    :cond_0
    if-eqz p3, :cond_1

    .line 826
    invoke-virtual {p0, v1}, Lorg/jpos/q2/Q2;->encrypt(Lorg/jdom2/Document;)Lorg/jdom2/Document;

    move-result-object v1

    .line 828
    :cond_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 829
    .local v3, "writer":Ljava/io/Writer;
    :try_start_0
    invoke-virtual {v0, v1, v3}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Document;Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 831
    .end local v3    # "writer":Ljava/io/Writer;
    return-void

    .line 828
    .restart local v3    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v4

    .end local v0    # "out":Lorg/jdom2/output/XMLOutputter;
    .end local v1    # "doc":Lorg/jdom2/Document;
    .end local v2    # "qbean":Ljava/io/File;
    .end local v3    # "writer":Ljava/io/Writer;
    .end local p1    # "e":Lorg/jdom2/Element;
    .end local p2    # "fileName":Ljava/lang/String;
    .end local p3    # "encrypt":Z
    .end local p4    # "isTransient":Z
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 830
    .restart local v0    # "out":Lorg/jdom2/output/XMLOutputter;
    .restart local v1    # "doc":Lorg/jdom2/Document;
    .restart local v2    # "qbean":Ljava/io/File;
    .restart local v3    # "writer":Ljava/io/Writer;
    .restart local p1    # "e":Lorg/jdom2/Element;
    .restart local p2    # "fileName":Ljava/lang/String;
    .restart local p3    # "encrypt":Z
    .restart local p4    # "isTransient":Z
    :catchall_1
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v5
.end method

.method public displayVersion()V
    .locals 2

    .line 679
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/jpos/q2/Q2;->getVersionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method protected encrypt(Lorg/jdom2/Document;)Lorg/jdom2/Document;
    .locals 8
    .param p1, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 853
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 854
    .local v1, "writer":Ljava/io/OutputStreamWriter;
    new-instance v2, Lorg/jdom2/output/XMLOutputter;

    invoke-static {}, Lorg/jdom2/output/Format;->getPrettyFormat()Lorg/jdom2/output/Format;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;)V

    .line 855
    .local v2, "out":Lorg/jdom2/output/XMLOutputter;
    invoke-virtual {v2, p1, v1}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Document;Ljava/io/Writer;)V

    .line 856
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 858
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/jpos/q2/Q2;->dodes([BI)[B

    move-result-object v3

    .line 860
    .local v3, "crypt":[B
    new-instance v4, Lorg/jdom2/Document;

    invoke-direct {v4}, Lorg/jdom2/Document;-><init>()V

    .line 861
    .local v4, "secureDoc":Lorg/jdom2/Document;
    new-instance v5, Lorg/jdom2/Element;

    const-string v6, "protected-qbean"

    invoke-direct {v5, v6}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;)V

    .line 862
    .local v5, "root":Lorg/jdom2/Element;
    invoke-virtual {v4, v5}, Lorg/jdom2/Document;->setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    .line 863
    new-instance v6, Lorg/jdom2/Element;

    const-string v7, "data"

    invoke-direct {v6, v7}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;)V

    .line 864
    .local v6, "secureData":Lorg/jdom2/Element;
    invoke-virtual {v5, v6}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 866
    nop

    .line 867
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v7

    .line 866
    invoke-virtual {v6, v7}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 869
    return-object v4
.end method

.method public getCommandLineArgs()[Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/jpos/q2/Q2;->args:[Ljava/lang/String;

    return-object v0
.end method

.method public getDeployDir()Ljava/io/File;
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    return-object v0
.end method

.method public getFactory()Lorg/jpos/q2/QFactory;
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/jpos/q2/Q2;->factory:Lorg/jpos/q2/QFactory;

    return-object v0
.end method

.method public getInstanceId()Ljava/util/UUID;
    .locals 1

    .line 682
    iget-object v0, p0, Lorg/jpos/q2/Q2;->instanceId:Ljava/util/UUID;

    return-object v0
.end method

.method protected getKey()[B
    .locals 3

    .line 845
    nop

    .line 846
    const/16 v0, 0x8

    invoke-static {v0, v0}, Lorg/jpos/security/SystemSeed;->getSeed(II)[B

    move-result-object v0

    .line 847
    const-string v1, "jpos.deploy.key"

    const-string v2, "BD653F60F980F788"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v1

    .line 846
    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v0

    .line 845
    return-object v0
.end method

.method public getLoader()Lorg/jpos/q2/QClassLoader;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/jpos/q2/Q2;->loader:Lorg/jpos/q2/QClassLoader;

    return-object v0
.end method

.method public getLog()Lorg/jpos/util/Log;
    .locals 3

    .line 664
    iget-object v0, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    if-nez v0, :cond_1

    .line 665
    const-string v0, "Q2"

    invoke-static {v0}, Lorg/jpos/util/Logger;->getLogger(Ljava/lang/String;)Lorg/jpos/util/Logger;

    move-result-object v0

    .line 666
    .local v0, "logger":Lorg/jpos/util/Logger;
    iget-boolean v1, p0, Lorg/jpos/q2/Q2;->hasSystemLogger:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/jpos/util/Logger;->hasListeners()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jpos/q2/Q2;->cli:Lorg/jpos/q2/CLI;

    if-nez v1, :cond_0

    .line 667
    new-instance v1, Lorg/jpos/util/SimpleLogListener;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Lorg/jpos/util/SimpleLogListener;-><init>(Ljava/io/PrintStream;)V

    invoke-virtual {v0, v1}, Lorg/jpos/util/Logger;->addListener(Lorg/jpos/util/LogListener;)V

    .line 668
    :cond_0
    new-instance v1, Lorg/jpos/util/Log;

    const-string v2, "Q2.system"

    invoke-direct {v1, v0, v2}, Lorg/jpos/util/Log;-><init>(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    .line 670
    .end local v0    # "logger":Lorg/jpos/util/Logger;
    :cond_1
    iget-object v0, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    return-object v0
.end method

.method public getMBeanServer()Ljavax/management/MBeanServer;
    .locals 1

    .line 673
    iget-object v0, p0, Lorg/jpos/q2/Q2;->server:Ljavax/management/MBeanServer;

    return-object v0
.end method

.method public getOSGIFramework()Lorg/osgi/framework/launch/Framework;
    .locals 1

    .line 834
    iget-object v0, p0, Lorg/jpos/q2/Q2;->osgiFramework:Lorg/osgi/framework/launch/Framework;

    return-object v0
.end method

.method public getUptime()J
    .locals 2

    .line 676
    iget-object v0, p0, Lorg/jpos/q2/Q2;->startTime:Ljava/time/Instant;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWatchServiceClassname()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/jpos/q2/Q2;->watchServiceClassname:Ljava/lang/String;

    return-object v0
.end method

.method public isDisableDynamicClassloader()Z
    .locals 1

    .line 1044
    iget-boolean v0, p0, Lorg/jpos/q2/Q2;->disableDynamicClassloader:Z

    return v0
.end method

.method public ready()Z
    .locals 4

    .line 308
    iget-object v0, p0, Lorg/jpos/q2/Q2;->ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jpos/q2/Q2;->shutdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ready(J)Z
    .locals 2
    .param p1, "millis"    # J

    .line 312
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/Q2;->ready:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 314
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->ready()Z

    move-result v0

    return v0
.end method

.method public relax()V
    .locals 2

    .line 644
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lorg/jpos/q2/Q2;->relax(J)V

    .line 645
    return-void
.end method

.method public relax(J)V
    .locals 2
    .param p1, "sleep"    # J

    .line 640
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/Q2;->shutdown:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 642
    return-void
.end method

.method public run()V
    .locals 14

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/q2/Q2;->started:Z

    .line 182
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Q2-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getInstanceId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lorg/jpos/q2/Q2;->deployDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 185
    .local v1, "dir":Ljava/nio/file/Path;
    invoke-interface {v1}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v3

    .line 186
    .local v3, "fs":Ljava/nio/file/FileSystem;
    :try_start_0
    invoke-virtual {v3}, Ljava/nio/file/FileSystem;->newWatchService()Ljava/nio/file/WatchService;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 187
    .local v4, "service":Ljava/nio/file/WatchService;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jpos/q2/Q2;->watchServiceClassname:Ljava/lang/String;

    .line 188
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/nio/file/WatchEvent$Kind;

    sget-object v6, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    aput-object v6, v5, v2

    sget-object v6, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    aput-object v6, v5, v0

    const/4 v6, 0x2

    sget-object v7, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    aput-object v7, v5, v6

    invoke-interface {v1, v4, v5}, Ljava/nio/file/Path;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;

    .line 201
    const/4 v5, 0x0

    .line 202
    invoke-static {v5}, Ljavax/management/MBeanServerFactory;->findMBeanServer(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 203
    .local v5, "mbeanServerList":Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 204
    const-string v6, "Q2"

    invoke-static {v6}, Ljavax/management/MBeanServerFactory;->createMBeanServer(Ljava/lang/String;)Ljavax/management/MBeanServer;

    move-result-object v6

    iput-object v6, p0, Lorg/jpos/q2/Q2;->server:Ljavax/management/MBeanServer;

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/management/MBeanServer;

    iput-object v6, p0, Lorg/jpos/q2/Q2;->server:Ljavax/management/MBeanServer;

    .line 208
    :goto_0
    new-instance v6, Ljavax/management/ObjectName;

    const-string v7, "Q2:type=system,service=loader"

    invoke-direct {v6, v7}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 211
    .local v6, "loaderName":Ljavax/management/ObjectName;
    :try_start_2
    new-instance v7, Lorg/jpos/q2/Q2$1;

    invoke-direct {v7, p0, v6}, Lorg/jpos/q2/Q2$1;-><init>(Lorg/jpos/q2/Q2;Ljavax/management/ObjectName;)V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jpos/q2/QClassLoader;

    iput-object v7, p0, Lorg/jpos/q2/Q2;->loader:Lorg/jpos/q2/QClassLoader;

    .line 218
    iget-object v7, p0, Lorg/jpos/q2/Q2;->server:Ljavax/management/MBeanServer;

    invoke-interface {v7, v6}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 219
    iget-object v7, p0, Lorg/jpos/q2/Q2;->server:Ljavax/management/MBeanServer;

    invoke-interface {v7, v6}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    .line 220
    :cond_1
    iget-object v7, p0, Lorg/jpos/q2/Q2;->server:Ljavax/management/MBeanServer;

    iget-object v8, p0, Lorg/jpos/q2/Q2;->loader:Lorg/jpos/q2/QClassLoader;

    invoke-interface {v7, v8, v6}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 221
    iget-object v7, p0, Lorg/jpos/q2/Q2;->loader:Lorg/jpos/q2/QClassLoader;

    invoke-virtual {v7, v2}, Lorg/jpos/q2/QClassLoader;->scan(Z)Lorg/jpos/q2/QClassLoader;

    move-result-object v7

    iput-object v7, p0, Lorg/jpos/q2/Q2;->loader:Lorg/jpos/q2/QClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    goto :goto_1

    .line 222
    :catchall_0
    move-exception v7

    .line 223
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_3
    iget-object v8, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    if-eqz v8, :cond_2

    .line 224
    const-string v9, "initial-scan"

    invoke-virtual {v8, v9, v7}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 228
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_1
    new-instance v7, Lorg/jpos/q2/QFactory;

    invoke-direct {v7, v6, p0}, Lorg/jpos/q2/QFactory;-><init>(Ljavax/management/ObjectName;Lorg/jpos/q2/Q2;)V

    iput-object v7, p0, Lorg/jpos/q2/Q2;->factory:Lorg/jpos/q2/QFactory;

    .line 229
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->writePidFile()V

    .line 230
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->initSystemLogger()V

    .line 231
    iget-object v7, p0, Lorg/jpos/q2/Q2;->bundleContext:Lorg/osgi/framework/BundleContext;

    if-nez v7, :cond_3

    .line 232
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->addShutdownHook()V

    .line 233
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    iput-object v7, p0, Lorg/jpos/q2/Q2;->q2Thread:Ljava/lang/Thread;

    .line 234
    iget-object v7, p0, Lorg/jpos/q2/Q2;->q2Thread:Ljava/lang/Thread;

    iget-object v8, p0, Lorg/jpos/q2/Q2;->loader:Lorg/jpos/q2/QClassLoader;

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 235
    iget-object v7, p0, Lorg/jpos/q2/Q2;->cli:Lorg/jpos/q2/CLI;

    if-eqz v7, :cond_4

    .line 236
    invoke-virtual {v7}, Lorg/jpos/q2/CLI;->start()V

    .line 237
    :cond_4
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->initConfigDecorator()V

    .line 238
    iget-boolean v7, p0, Lorg/jpos/q2/Q2;->startOSGI:Z

    if-eqz v7, :cond_5

    .line 239
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->startOSGIFramework()V

    .line 240
    :cond_5
    iget-boolean v7, p0, Lorg/jpos/q2/Q2;->enableSsh:Z

    if-eqz v7, :cond_6

    .line 241
    iget v7, p0, Lorg/jpos/q2/Q2;->sshPort:I

    iget-object v8, p0, Lorg/jpos/q2/Q2;->sshUser:Ljava/lang/String;

    iget-object v9, p0, Lorg/jpos/q2/Q2;->sshAuthorizedKeys:Ljava/lang/String;

    iget-object v10, p0, Lorg/jpos/q2/Q2;->sshHostKeyFile:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10}, Lorg/jpos/q2/ssh/SshService;->createDescriptor(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "05_sshd-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 242
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->getInstanceId()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 241
    invoke-virtual {p0, v7, v8, v2, v0}, Lorg/jpos/q2/Q2;->deployElement(Lorg/jdom2/Element;Ljava/lang/String;ZZ)V

    .line 245
    :cond_6
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->deployInternal()V

    .line 246
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_2
    iget-object v8, p0, Lorg/jpos/q2/Q2;->shutdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_b

    .line 248
    if-le v7, v0, :cond_7

    :try_start_4
    iget-boolean v8, p0, Lorg/jpos/q2/Q2;->disableDeployScan:Z

    if-eqz v8, :cond_7

    .line 249
    iget-object v8, p0, Lorg/jpos/q2/Q2;->shutdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 250
    goto/16 :goto_6

    .line 252
    :cond_7
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->scan()Z

    move-result v8

    if-eqz v8, :cond_8

    if-le v7, v0, :cond_8

    move v8, v0

    goto :goto_3

    :cond_8
    move v8, v2

    .line 253
    .local v8, "forceNewClassLoader":Z
    :goto_3
    iget-object v9, p0, Lorg/jpos/q2/Q2;->loader:Lorg/jpos/q2/QClassLoader;

    move-object v10, v9

    .line 254
    .local v10, "oldClassLoader":Lorg/jpos/q2/QClassLoader;
    invoke-virtual {v9, v8}, Lorg/jpos/q2/QClassLoader;->scan(Z)Lorg/jpos/q2/QClassLoader;

    move-result-object v9

    iput-object v9, p0, Lorg/jpos/q2/Q2;->loader:Lorg/jpos/q2/QClassLoader;

    .line 255
    if-eq v9, v10, :cond_9

    .line 256
    const/4 v10, 0x0

    .line 257
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 258
    iget-object v9, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new classloader ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/jpos/q2/Q2;->loader:Lorg/jpos/q2/QClassLoader;

    .line 260
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] has been created"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 258
    invoke-virtual {v9, v11}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 263
    iget-object v9, p0, Lorg/jpos/q2/Q2;->q2Thread:Ljava/lang/Thread;

    iget-object v11, p0, Lorg/jpos/q2/Q2;->loader:Lorg/jpos/q2/QClassLoader;

    invoke-virtual {v9, v11}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 265
    :cond_9
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->logVersion()V

    .line 267
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->deploy()V

    .line 268
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->checkModified()V

    .line 269
    iget-object v9, p0, Lorg/jpos/q2/Q2;->ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 270
    invoke-direct {p0, v4}, Lorg/jpos/q2/Q2;->waitForChanges(Ljava/nio/file/WatchService;)Z

    move-result v9
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v9, :cond_a

    .line 271
    goto :goto_6

    .line 270
    .end local v8    # "forceNewClassLoader":Z
    .end local v10    # "oldClassLoader":Lorg/jpos/q2/QClassLoader;
    :cond_a
    goto :goto_4

    .line 274
    :catchall_1
    move-exception v8

    .line 275
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_5
    iget-object v9, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    const-string v10, "start"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    invoke-virtual {p0}, Lorg/jpos/q2/Q2;->relax()V

    goto :goto_5

    .line 272
    .end local v8    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v8

    goto :goto_4

    :catch_1
    move-exception v8

    .line 277
    :goto_4
    nop

    .line 246
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 279
    .end local v7    # "i":I
    :cond_b
    :goto_6
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->undeploy()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 281
    :try_start_6
    iget-object v7, p0, Lorg/jpos/q2/Q2;->server:Ljavax/management/MBeanServer;

    invoke-interface {v7, v6}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 282
    iget-object v7, p0, Lorg/jpos/q2/Q2;->server:Ljavax/management/MBeanServer;

    invoke-interface {v7, v6}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_6
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 285
    :cond_c
    goto :goto_7

    .line 283
    :catch_2
    move-exception v7

    .line 284
    .local v7, "e":Ljavax/management/InstanceNotFoundException;
    :try_start_7
    iget-object v8, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    invoke-virtual {v8, v7}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 286
    .end local v7    # "e":Ljavax/management/InstanceNotFoundException;
    :goto_7
    iget-object v7, p0, Lorg/jpos/q2/Q2;->decorator:Lorg/jpos/q2/ConfigDecorationProvider;

    if-eqz v7, :cond_d

    .line 287
    invoke-interface {v7}, Lorg/jpos/q2/ConfigDecorationProvider;->uninitialize()V

    .line 289
    :cond_d
    iget-boolean v7, p0, Lorg/jpos/q2/Q2;->exit:Z

    if-eqz v7, :cond_e

    iget-boolean v7, p0, Lorg/jpos/q2/Q2;->shuttingDown:Z

    if-nez v7, :cond_e

    .line 290
    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 291
    .end local v5    # "mbeanServerList":Ljava/util/ArrayList;
    .end local v6    # "loaderName":Ljavax/management/ObjectName;
    :cond_e
    if-eqz v4, :cond_11

    :try_start_8
    invoke-interface {v4}, Ljava/nio/file/WatchService;->close()V
    :try_end_8
    .catch Ljava/lang/IllegalAccessError; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_a

    .line 186
    :catchall_2
    move-exception v2

    .end local v1    # "dir":Ljava/nio/file/Path;
    .end local v3    # "fs":Ljava/nio/file/FileSystem;
    .end local v4    # "service":Ljava/nio/file/WatchService;
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 291
    .restart local v1    # "dir":Ljava/nio/file/Path;
    .restart local v3    # "fs":Ljava/nio/file/FileSystem;
    .restart local v4    # "service":Ljava/nio/file/WatchService;
    :catchall_3
    move-exception v5

    if-eqz v4, :cond_f

    :try_start_a
    invoke-interface {v4}, Ljava/nio/file/WatchService;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v6

    :try_start_b
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "dir":Ljava/nio/file/Path;
    .end local v3    # "fs":Ljava/nio/file/FileSystem;
    :cond_f
    :goto_8
    throw v5
    :try_end_b
    .catch Ljava/lang/IllegalAccessError; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 293
    .end local v4    # "service":Ljava/nio/file/WatchService;
    .restart local v1    # "dir":Ljava/nio/file/Path;
    .restart local v3    # "fs":Ljava/nio/file/FileSystem;
    :catch_3
    move-exception v2

    .line 294
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    if-eqz v4, :cond_10

    .line 295
    invoke-virtual {v4, v2}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    goto :goto_9

    .line 297
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    :goto_9
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_b

    .line 291
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 299
    :cond_11
    :goto_a
    nop

    .line 300
    :goto_b
    return-void
.end method

.method public running()Z
    .locals 4

    .line 305
    iget-boolean v0, p0, Lorg/jpos/q2/Q2;->started:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/q2/Q2;->shutdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shutdown()V
    .locals 1

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jpos/q2/Q2;->shutdown(Z)V

    .line 303
    return-void
.end method

.method public shutdown(Z)V
    .locals 2
    .param p1, "join"    # Z

    .line 317
    iget-object v0, p0, Lorg/jpos/q2/Q2;->shutdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 318
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->unregisterQ2()V

    .line 319
    iget-object v0, p0, Lorg/jpos/q2/Q2;->q2Thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    const-string v1, "shutting down"

    invoke-virtual {v0, v1}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lorg/jpos/q2/Q2;->q2Thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 322
    if-eqz p1, :cond_0

    .line 324
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/Q2;->q2Thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 325
    iget-object v0, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    const-string v1, "shutdown done"

    invoke-virtual {v0, v1}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lorg/jpos/q2/Q2;->log:Lorg/jpos/util/Log;

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 331
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/Q2;->q2Thread:Ljava/lang/Thread;

    .line 332
    invoke-direct {p0}, Lorg/jpos/q2/Q2;->stopOSGIFramework()V

    .line 333
    return-void
.end method

.method public start()V
    .locals 4

    .line 173
    iget-object v0, p0, Lorg/jpos/q2/Q2;->shutdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Q2 has been stopped"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 1

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/Q2;->shutdown(Z)V

    .line 179
    return-void
.end method
