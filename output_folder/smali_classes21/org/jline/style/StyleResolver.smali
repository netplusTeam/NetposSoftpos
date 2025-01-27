.class public Lorg/jline/style/StyleResolver;
.super Lorg/jline/utils/StyleResolver;
.source "StyleResolver.java"


# instance fields
.field private final group:Ljava/lang/String;

.field private final source:Lorg/jline/style/StyleSource;


# direct methods
.method public constructor <init>(Lorg/jline/style/StyleSource;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Lorg/jline/style/StyleSource;
    .param p2, "group"    # Ljava/lang/String;

    .line 29
    new-instance v0, Lorg/jline/style/StyleResolver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lorg/jline/style/StyleResolver$$ExternalSyntheticLambda0;-><init>(Lorg/jline/style/StyleSource;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jline/utils/StyleResolver;-><init>(Ljava/util/function/Function;)V

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/style/StyleSource;

    iput-object v0, p0, Lorg/jline/style/StyleResolver;->source:Lorg/jline/style/StyleSource;

    .line 31
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jline/style/StyleResolver;->group:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic lambda$new$0(Lorg/jline/style/StyleSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Lorg/jline/style/StyleSource;
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 29
    invoke-interface {p0, p1, p2}, Lorg/jline/style/StyleSource;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/jline/style/StyleResolver;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lorg/jline/style/StyleSource;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/jline/style/StyleResolver;->source:Lorg/jline/style/StyleSource;

    return-object v0
.end method
