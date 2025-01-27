.class public Lorg/jline/style/StyleFactory;
.super Ljava/lang/Object;
.source "StyleFactory.java"


# instance fields
.field private final resolver:Lorg/jline/style/StyleResolver;


# direct methods
.method public constructor <init>(Lorg/jline/style/StyleResolver;)V
    .locals 1
    .param p1, "resolver"    # Lorg/jline/style/StyleResolver;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/style/StyleResolver;

    iput-object v0, p0, Lorg/jline/style/StyleFactory;->resolver:Lorg/jline/style/StyleResolver;

    .line 26
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 2
    .param p1, "expression"    # Ljava/lang/String;

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lorg/jline/style/StyleExpression;

    iget-object v1, p0, Lorg/jline/style/StyleFactory;->resolver:Lorg/jline/style/StyleResolver;

    invoke-direct {v0, v1}, Lorg/jline/style/StyleExpression;-><init>(Lorg/jline/style/StyleResolver;)V

    invoke-virtual {v0, p1}, Lorg/jline/style/StyleExpression;->evaluate(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method public varargs evaluate(Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 77
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/style/StyleFactory;->evaluate(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method public style(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 2
    .param p1, "style"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 36
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lorg/jline/style/StyleFactory;->resolver:Lorg/jline/style/StyleResolver;

    invoke-virtual {v0, p1}, Lorg/jline/style/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    .line 38
    .local v0, "astyle":Lorg/jline/utils/AttributedStyle;
    new-instance v1, Lorg/jline/utils/AttributedString;

    invoke-direct {v1, p2, v0}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)V

    return-object v1
.end method

.method public varargs style(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p1, "style"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 51
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jline/style/StyleFactory;->style(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method
