.class public Lorg/jline/style/StyleExpression;
.super Ljava/lang/Object;
.source "StyleExpression.java"


# instance fields
.field private final resolver:Lorg/jline/style/StyleResolver;


# direct methods
.method public static synthetic $r8$lambda$U1LNdjetC3uSJmn24r0nCs0owl4(Lorg/jline/style/StyleExpression;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/style/StyleExpression;->style(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 29
    new-instance v0, Lorg/jline/style/StyleResolver;

    new-instance v1, Lorg/jline/style/NopStyleSource;

    invoke-direct {v1}, Lorg/jline/style/NopStyleSource;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/jline/style/StyleResolver;-><init>(Lorg/jline/style/StyleSource;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jline/style/StyleExpression;-><init>(Lorg/jline/style/StyleResolver;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/jline/style/StyleResolver;)V
    .locals 1
    .param p1, "resolver"    # Lorg/jline/style/StyleResolver;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/style/StyleResolver;

    iput-object v0, p0, Lorg/jline/style/StyleExpression;->resolver:Lorg/jline/style/StyleResolver;

    .line 34
    return-void
.end method

.method private style(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 51
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 52
    .local v0, "idx":I
    if-lez v0, :cond_0

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "spec":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lorg/jline/style/StyleExpression;->resolver:Lorg/jline/style/StyleResolver;

    invoke-virtual {v3, v1}, Lorg/jline/style/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v3

    .line 56
    .local v3, "style":Lorg/jline/utils/AttributedStyle;
    new-instance v4, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v4}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/jline/utils/AttributedStringBuilder;->ansiAppend(Ljava/lang/String;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAnsi()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 58
    .end local v1    # "spec":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "style":Lorg/jline/utils/AttributedStyle;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 2
    .param p1, "expression"    # Ljava/lang/String;

    .line 68
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 69
    .local v0, "buff":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {p0, v0, p1}, Lorg/jline/style/StyleExpression;->evaluate(Lorg/jline/utils/AttributedStringBuilder;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    return-object v1
.end method

.method public evaluate(Lorg/jline/utils/AttributedStringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "buff"    # Lorg/jline/utils/AttributedStringBuilder;
    .param p2, "expression"    # Ljava/lang/String;

    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v0, Lorg/jline/style/StyleExpression$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/jline/style/StyleExpression$$ExternalSyntheticLambda0;-><init>(Lorg/jline/style/StyleExpression;)V

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lorg/jline/style/InterpolationHelper;->substVars(Ljava/lang/String;Ljava/util/function/Function;Z)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "translated":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/jline/utils/AttributedStringBuilder;->appendAnsi(Ljava/lang/String;)V

    .line 48
    return-void
.end method
