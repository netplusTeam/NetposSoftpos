.class public Lorg/jline/style/Styler;
.super Ljava/lang/Object;
.source "Styler.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;

.field private static volatile source:Lorg/jline/style/StyleSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lorg/jline/style/Styler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jline/style/Styler;->log:Ljava/util/logging/Logger;

    .line 29
    new-instance v0, Lorg/jline/style/NopStyleSource;

    invoke-direct {v0}, Lorg/jline/style/NopStyleSource;-><init>()V

    sput-object v0, Lorg/jline/style/Styler;->source:Lorg/jline/style/StyleSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static bundle(Ljava/lang/Class;)Lorg/jline/style/StyleBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jline/style/StyleBundle;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 87
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/jline/style/Styler;->source:Lorg/jline/style/StyleSource;

    invoke-static {v0, p0}, Lorg/jline/style/StyleBundleInvocationHandler;->create(Lorg/jline/style/StyleSource;Ljava/lang/Class;)Lorg/jline/style/StyleBundle;

    move-result-object v0

    return-object v0
.end method

.method public static bundle(Ljava/lang/String;Ljava/lang/Class;)Lorg/jline/style/StyleBundle;
    .locals 1
    .param p0, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jline/style/StyleBundle;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 99
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/jline/style/Styler;->resolver(Ljava/lang/String;)Lorg/jline/style/StyleResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jline/style/StyleBundleInvocationHandler;->create(Lorg/jline/style/StyleResolver;Ljava/lang/Class;)Lorg/jline/style/StyleBundle;

    move-result-object v0

    return-object v0
.end method

.method public static factory(Ljava/lang/String;)Lorg/jline/style/StyleFactory;
    .locals 2
    .param p0, "group"    # Ljava/lang/String;

    .line 74
    new-instance v0, Lorg/jline/style/StyleFactory;

    invoke-static {p0}, Lorg/jline/style/Styler;->resolver(Ljava/lang/String;)Lorg/jline/style/StyleResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jline/style/StyleFactory;-><init>(Lorg/jline/style/StyleResolver;)V

    return-object v0
.end method

.method public static getSource()Lorg/jline/style/StyleSource;
    .locals 1

    .line 41
    sget-object v0, Lorg/jline/style/Styler;->source:Lorg/jline/style/StyleSource;

    return-object v0
.end method

.method public static resolver(Ljava/lang/String;)Lorg/jline/style/StyleResolver;
    .locals 2
    .param p0, "group"    # Ljava/lang/String;

    .line 64
    new-instance v0, Lorg/jline/style/StyleResolver;

    sget-object v1, Lorg/jline/style/Styler;->source:Lorg/jline/style/StyleSource;

    invoke-direct {v0, v1, p0}, Lorg/jline/style/StyleResolver;-><init>(Lorg/jline/style/StyleSource;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setSource(Lorg/jline/style/StyleSource;)V
    .locals 3
    .param p0, "source"    # Lorg/jline/style/StyleSource;

    .line 50
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/style/StyleSource;

    sput-object v0, Lorg/jline/style/Styler;->source:Lorg/jline/style/StyleSource;

    .line 52
    sget-object v0, Lorg/jline/style/Styler;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method
