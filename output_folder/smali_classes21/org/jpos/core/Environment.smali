.class public Lorg/jpos/core/Environment;
.super Ljava/lang/Object;
.source "Environment.java"

# interfaces
.implements Lorg/jpos/util/Loggeable;


# static fields
.field private static final ENVIRONMENT_PREFIX:Ljava/lang/String; = "env"

.field private static INSTANCE:Lorg/jpos/core/Environment; = null

.field private static SP_PREFIX:Ljava/lang/String; = null

.field private static SP_PREFIX_LENGTH:I = 0x0

.field private static final SYSTEM_PREFIX:Ljava/lang/String; = "sys"

.field private static valuePattern:Ljava/util/regex/Pattern;

.field private static verbPattern:Ljava/util/regex/Pattern;


# instance fields
.field private errorString:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private propRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field private serviceLoader:Ljava/util/ServiceLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader<",
            "Lorg/jpos/core/EnvironmentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "^(.*)(\\$)([\\w]*)\\{([-\\w.]+)(:(.*))?\\}(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jpos/core/Environment;->valuePattern:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "^\\$verb\\{([\\w\\W]+)\\}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jpos/core/Environment;->verbPattern:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "system.property."

    sput-object v0, Lorg/jpos/core/Environment;->SP_PREFIX:Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/jpos/core/Environment;->SP_PREFIX_LENGTH:I

    .line 49
    :try_start_0
    new-instance v0, Lorg/jpos/core/Environment;

    invoke-direct {v0}, Lorg/jpos/core/Environment;-><init>()V

    sput-object v0, Lorg/jpos/core/Environment;->INSTANCE:Lorg/jpos/core/Environment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    nop

    .line 54
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jpos/core/Environment;->propRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    const-string v0, "jpos.env"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Environment;->name:Ljava/lang/String;

    .line 58
    if-nez v0, :cond_0

    const-string v0, "default"

    :cond_0
    iput-object v0, p0, Lorg/jpos/core/Environment;->name:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lorg/jpos/core/Environment;->readConfig()V

    .line 60
    const-class v0, Lorg/jpos/core/EnvironmentProvider;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/core/Environment;->serviceLoader:Ljava/util/ServiceLoader;

    .line 61
    return-void
.end method

.method private extractSystemProperties()V
    .locals 3

    .line 177
    iget-object v0, p0, Lorg/jpos/core/Environment;->propRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 178
    .local v0, "properties":Ljava/util/Properties;
    nop

    .line 179
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    .line 180
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jpos/core/Environment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/jpos/core/Environment$$ExternalSyntheticLambda1;-><init>()V

    .line 181
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jpos/core/Environment$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/jpos/core/Environment$$ExternalSyntheticLambda2;-><init>(Ljava/util/Properties;)V

    .line 182
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 183
    return-void
.end method

.method public static flat(Ljava/util/Properties;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7
    .param p0, "properties"    # Ljava/util/Properties;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "dereference"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 224
    .local p2, "c":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 225
    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 226
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "p":Ljava/lang/String;
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 228
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {p0, v3, v4, p3}, Lorg/jpos/core/Environment;->flat(Ljava/util/Properties;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_3

    .line 230
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 231
    .local v4, "obj":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_2

    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "p":Ljava/lang/String;
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_3
    goto :goto_0

    .line 234
    :cond_3
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "p"    # Ljava/lang/String;

    .line 75
    invoke-static {}, Lorg/jpos/core/Environment;->getEnvironment()Lorg/jpos/core/Environment;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lorg/jpos/core/Environment;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "p"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 78
    invoke-static {}, Lorg/jpos/core/Environment;->getEnvironment()Lorg/jpos/core/Environment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/jpos/core/Environment;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnvironment()Lorg/jpos/core/Environment;
    .locals 1

    .line 72
    sget-object v0, Lorg/jpos/core/Environment;->INSTANCE:Lorg/jpos/core/Environment;

    return-object v0
.end method

.method static synthetic lambda$dump$3(Ljava/io/PrintStream;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 3
    .param p0, "p"    # Ljava/io/PrintStream;
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;
    .param p3, "prop"    # Ljava/lang/String;

    .line 241
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-virtual {p2, p3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s  %s=%s%n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 242
    return-void
.end method

.method static synthetic lambda$extractSystemProperties$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/String;

    .line 181
    sget-object v0, Lorg/jpos/core/Environment;->SP_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$extractSystemProperties$1(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2
    .param p0, "properties"    # Ljava/util/Properties;
    .param p1, "prop"    # Ljava/lang/String;

    .line 182
    sget v0, Lorg/jpos/core/Environment;->SP_PREFIX_LENGTH:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$readYAML$2(Ljava/util/Properties;Ljava/lang/Object;)V
    .locals 3
    .param p0, "properties"    # Ljava/util/Properties;
    .param p1, "d"    # Ljava/lang/Object;

    .line 194
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lorg/jpos/core/Environment;->flat(Ljava/util/Properties;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 195
    return-void
.end method

.method static synthetic lambda$toString$4(Ljava/util/Properties;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p0, "properties"    # Ljava/util/Properties;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prop"    # Ljava/lang/String;

    .line 254
    invoke-virtual {p0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v4, "${%s}"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "ds":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v1

    .line 257
    .local v4, "differ":Z
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v3

    aput-object v0, v5, v1

    const/4 v1, 0x2

    if-eqz v4, :cond_0

    const-string v3, " (*)"

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    aput-object v3, v5, v1

    const-string v1, "  %s=%s%s%n"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    return-void
.end method

.method private readCfg()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cfg/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/core/Environment;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 211
    .local v1, "properties":Ljava/util/Properties;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .local v2, "fis":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 213
    iget-object v3, p0, Lorg/jpos/core/Environment;->propRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    const/4 v3, 0x1

    .line 215
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    return v3

    .line 211
    :catchall_0
    move-exception v3

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "fis":Ljava/io/InputStream;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "properties":Ljava/util/Properties;
    .restart local v2    # "fis":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "properties":Ljava/util/Properties;
    :goto_0
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "properties":Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/io/IOException;
    throw v2

    .line 219
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private readConfig()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/jpos/core/Environment;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0}, Lorg/jpos/core/Environment;->readYAML()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lorg/jpos/core/Environment;->readCfg()Z

    .line 171
    :cond_0
    invoke-direct {p0}, Lorg/jpos/core/Environment;->extractSystemProperties()V

    .line 172
    iget-object v0, p0, Lorg/jpos/core/Environment;->propRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    iget-object v1, p0, Lorg/jpos/core/Environment;->name:Ljava/lang/String;

    const-string v2, "jpos.env"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_1
    return-void
.end method

.method private readYAML()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cfg/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/core/Environment;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".yml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jpos/core/Environment;->errorString:Ljava/lang/String;

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 190
    .local v1, "properties":Ljava/util/Properties;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/yaml/snakeyaml/scanner/ScannerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .local v2, "fis":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Lorg/yaml/snakeyaml/Yaml;

    invoke-direct {v3}, Lorg/yaml/snakeyaml/Yaml;-><init>()V

    .line 192
    .local v3, "yaml":Lorg/yaml/snakeyaml/Yaml;
    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/Yaml;->loadAll(Ljava/io/InputStream;)Ljava/lang/Iterable;

    move-result-object v4

    .line 193
    .local v4, "document":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    new-instance v5, Lorg/jpos/core/Environment$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1}, Lorg/jpos/core/Environment$$ExternalSyntheticLambda3;-><init>(Ljava/util/Properties;)V

    invoke-interface {v4, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 196
    iget-object v5, p0, Lorg/jpos/core/Environment;->propRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    const/4 v5, 0x1

    .line 198
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/yaml/snakeyaml/scanner/ScannerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    return v5

    .line 190
    .end local v3    # "yaml":Lorg/yaml/snakeyaml/Yaml;
    .end local v4    # "document":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "fis":Ljava/io/InputStream;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "properties":Ljava/util/Properties;
    .restart local v2    # "fis":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "properties":Ljava/util/Properties;
    :goto_0
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/yaml/snakeyaml/scanner/ScannerException; {:try_start_5 .. :try_end_5} :catch_0

    .line 200
    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "properties":Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Lorg/yaml/snakeyaml/scanner/ScannerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Environment ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jpos/core/Environment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/scanner/ScannerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/core/Environment;->errorString:Ljava/lang/String;

    goto :goto_1

    .line 198
    .end local v2    # "e":Lorg/yaml/snakeyaml/scanner/ScannerException;
    :catch_1
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    throw v2

    .line 204
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public static reload()Lorg/jpos/core/Environment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/jpos/core/Environment;

    invoke-direct {v0}, Lorg/jpos/core/Environment;-><init>()V

    sput-object v0, Lorg/jpos/core/Environment;->INSTANCE:Lorg/jpos/core/Environment;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 238
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iget-object v2, p0, Lorg/jpos/core/Environment;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "%s<environment name=\'%s\'>%n"

    invoke-virtual {p1, v2, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 239
    iget-object v0, p0, Lorg/jpos/core/Environment;->propRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 240
    .local v0, "properties":Ljava/util/Properties;
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lorg/jpos/core/Environment$$ExternalSyntheticLambda4;

    invoke-direct {v4, p1, p2, v0}, Lorg/jpos/core/Environment$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintStream;Ljava/lang/String;Ljava/util/Properties;)V

    .line 241
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 243
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string v1, "%s</environment>%n"

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 244
    return-void
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/jpos/core/Environment;->errorString:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jpos/core/Environment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .line 107
    move-object v0, p1

    .line 108
    .local v0, "r":Ljava/lang/String;
    if-eqz p1, :cond_c

    .line 109
    sget-object v1, Lorg/jpos/core/Environment;->verbPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 110
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 113
    :cond_0
    sget-object v2, Lorg/jpos/core/Environment;->valuePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    return-object p1

    .line 116
    :cond_1
    :goto_0
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 117
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "gPrefix":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "gValue":Ljava/lang/String;
    if-eqz v2, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    const-string v5, ""

    :goto_1
    move-object v2, v5

    .line 120
    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_3
    goto :goto_2

    :sswitch_0
    const-string v6, "sys"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string v6, "env"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v5, v3

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 128
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_b

    .line 129
    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-nez v0, :cond_4

    const/16 v5, 0x2e

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 125
    :pswitch_0
    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    goto :goto_6

    .line 122
    :pswitch_1
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    goto :goto_6

    .line 130
    :cond_4
    move-object v5, v0

    :goto_3
    move-object v0, v5

    .line 131
    if-nez v0, :cond_5

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    move-object v5, v0

    :goto_4
    move-object v0, v5

    .line 132
    if-nez v0, :cond_6

    iget-object v5, p0, Lorg/jpos/core/Environment;->propRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Properties;

    invoke-virtual {v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_6
    move-object v5, v0

    :goto_5
    move-object v0, v5

    .line 138
    :goto_6
    if-nez v0, :cond_7

    .line 139
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "defValue":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 141
    move-object v0, v5

    .line 144
    .end local v5    # "defValue":Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_a

    .line 145
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_8
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_9
    sget-object v5, Lorg/jpos/core/Environment;->valuePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    goto :goto_7

    .line 153
    :cond_a
    const/4 v1, 0x0

    .line 154
    .end local v2    # "gPrefix":Ljava/lang/String;
    .end local v4    # "gValue":Ljava/lang/String;
    :goto_7
    goto/16 :goto_0

    .line 134
    .restart local v2    # "gPrefix":Ljava/lang/String;
    .restart local v4    # "gValue":Ljava/lang/String;
    :cond_b
    return-object p1

    .line 156
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "gPrefix":Ljava/lang/String;
    .end local v4    # "gValue":Ljava/lang/String;
    :cond_c
    iget-object v1, p0, Lorg/jpos/core/Environment;->serviceLoader:Ljava/util/ServiceLoader;

    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/core/EnvironmentProvider;

    .line 157
    .local v2, "p":Lorg/jpos/core/EnvironmentProvider;
    invoke-interface {v2}, Lorg/jpos/core/EnvironmentProvider;->prefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 158
    .local v3, "l":I
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_d

    invoke-interface {v2}, Lorg/jpos/core/EnvironmentProvider;->prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/jpos/core/EnvironmentProvider;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .end local v2    # "p":Lorg/jpos/core/EnvironmentProvider;
    .end local v3    # "l":I
    :cond_d
    goto :goto_8

    .line 162
    :cond_e
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x188ed -> :sswitch_1
        0x1becd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lorg/jpos/core/Environment;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jpos/core/Environment;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 250
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "[%s]%n"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lorg/jpos/core/Environment;->propRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    .line 252
    .local v1, "properties":Ljava/util/Properties;
    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lorg/jpos/core/Environment$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v0}, Lorg/jpos/core/Environment$$ExternalSyntheticLambda0;-><init>(Ljava/util/Properties;Ljava/lang/StringBuilder;)V

    .line 253
    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 264
    iget-object v3, p0, Lorg/jpos/core/Environment;->serviceLoader:Ljava/util/ServiceLoader;

    invoke-virtual {v3}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    const-string v3, "  providers:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v3, p0, Lorg/jpos/core/Environment;->serviceLoader:Ljava/util/ServiceLoader;

    invoke-virtual {v3}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/core/EnvironmentProvider;

    .line 268
    .local v5, "provider":Lorg/jpos/core/EnvironmentProvider;
    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "    %s%n"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .end local v5    # "provider":Lorg/jpos/core/EnvironmentProvider;
    goto :goto_0

    .line 272
    .end local v1    # "properties":Ljava/util/Properties;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
