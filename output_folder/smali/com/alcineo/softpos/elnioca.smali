.class public Lcom/alcineo/softpos/elnioca;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final noaceli:Lorg/slf4j/Logger;


# instance fields
.field private final acileon:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mitchellbosecke/pebble/template/PebbleTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final aoleinc:Lcom/alcineo/softpos/iaelonc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/alcineo/softpos/elnioca;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/alcineo/softpos/elnioca;->noaceli:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alcineo/softpos/elnioca;->acileon:Ljava/util/Map;

    new-instance v1, Lcom/alcineo/softpos/iaelonc;

    invoke-direct {v1}, Lcom/alcineo/softpos/iaelonc;-><init>()V

    iput-object v1, p0, Lcom/alcineo/softpos/elnioca;->aoleinc:Lcom/alcineo/softpos/iaelonc;

    new-instance v2, Lcom/mitchellbosecke/pebble/loader/ClasspathLoader;

    const-class v3, Lcom/alcineo/softpos/elnioca;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mitchellbosecke/pebble/loader/ClasspathLoader;-><init>(Ljava/lang/ClassLoader;)V

    const-string v3, "com/alcineo/helper/templates"

    invoke-interface {v2, v3}, Lcom/mitchellbosecke/pebble/loader/Loader;->setPrefix(Ljava/lang/String;)V

    const-string/jumbo v3, "utf-8"

    invoke-interface {v2, v3}, Lcom/mitchellbosecke/pebble/loader/Loader;->setCharset(Ljava/lang/String;)V

    new-instance v3, Lcom/mitchellbosecke/pebble/PebbleEngine$Builder;

    invoke-direct {v3}, Lcom/mitchellbosecke/pebble/PebbleEngine$Builder;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/mitchellbosecke/pebble/extension/Extension;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/mitchellbosecke/pebble/PebbleEngine$Builder;->extension([Lcom/mitchellbosecke/pebble/extension/Extension;)Lcom/mitchellbosecke/pebble/PebbleEngine$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mitchellbosecke/pebble/PebbleEngine$Builder;->loader(Lcom/mitchellbosecke/pebble/loader/Loader;)Lcom/mitchellbosecke/pebble/PebbleEngine$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mitchellbosecke/pebble/PebbleEngine$Builder;->build()Lcom/mitchellbosecke/pebble/PebbleEngine;

    move-result-object v1

    const-string v2, "Alcineo.html"

    :try_start_0
    const-string v3, "html/alcineo/Index.html"

    invoke-virtual {v1, v3}, Lcom/mitchellbosecke/pebble/PebbleEngine;->getTemplate(Ljava/lang/String;)Lcom/mitchellbosecke/pebble/template/PebbleTemplate;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/mitchellbosecke/pebble/error/PebbleException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alcineo/softpos/elnioca;->noaceli:Lorg/slf4j/Logger;

    const-string v2, "Error while compiling template: "

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public native acileon()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public acileon(Ljava/lang/String;Lcom/alcineo/softpos/aenciol;Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/alcineo/softpos/elnioca;->acileon:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mitchellbosecke/pebble/template/PebbleTemplate;

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tm"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "version"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "buildVersion"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p5, p1}, Lcom/mitchellbosecke/pebble/template/PebbleTemplate;->evaluate(Ljava/io/Writer;Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid template name: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public native acileon(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/alcineo/utils/tlv/TlvTag;",
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/ilencoa;",
            ">;>;)V"
        }
    .end annotation
.end method
