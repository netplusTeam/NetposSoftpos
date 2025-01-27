.class public Lorg/jline/style/StyledWriter;
.super Ljava/io/PrintWriter;
.source "StyledWriter.java"


# instance fields
.field private final expression:Lorg/jline/style/StyleExpression;

.field private final terminal:Lorg/jline/terminal/Terminal;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/jline/terminal/Terminal;Lorg/jline/style/StyleResolver;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p3, "resolver"    # Lorg/jline/style/StyleResolver;
    .param p4, "autoFlush"    # Z

    .line 40
    invoke-direct {p0, p1, p4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 41
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/Terminal;

    iput-object v0, p0, Lorg/jline/style/StyledWriter;->terminal:Lorg/jline/terminal/Terminal;

    .line 42
    new-instance v0, Lorg/jline/style/StyleExpression;

    invoke-direct {v0, p3}, Lorg/jline/style/StyleExpression;-><init>(Lorg/jline/style/StyleResolver;)V

    iput-object v0, p0, Lorg/jline/style/StyledWriter;->expression:Lorg/jline/style/StyleExpression;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/jline/terminal/Terminal;Lorg/jline/style/StyleResolver;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p3, "resolver"    # Lorg/jline/style/StyleResolver;
    .param p4, "autoFlush"    # Z

    .line 34
    invoke-direct {p0, p1, p4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 35
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/Terminal;

    iput-object v0, p0, Lorg/jline/style/StyledWriter;->terminal:Lorg/jline/terminal/Terminal;

    .line 36
    new-instance v0, Lorg/jline/style/StyleExpression;

    invoke-direct {v0, p3}, Lorg/jline/style/StyleExpression;-><init>(Lorg/jline/style/StyleResolver;)V

    iput-object v0, p0, Lorg/jline/style/StyledWriter;->expression:Lorg/jline/style/StyleExpression;

    .line 37
    return-void
.end method


# virtual methods
.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;

    .line 55
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/style/StyledWriter;->print(Ljava/lang/String;)V

    .line 56
    return-object p0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "args"    # [Ljava/lang/Object;

    .line 61
    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/style/StyledWriter;->print(Ljava/lang/String;)V

    .line 62
    return-object p0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 47
    iget-object v0, p0, Lorg/jline/style/StyledWriter;->expression:Lorg/jline/style/StyleExpression;

    invoke-virtual {v0, p1}, Lorg/jline/style/StyleExpression;->evaluate(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    .line 48
    .local v0, "result":Lorg/jline/utils/AttributedString;
    iget-object v1, p0, Lorg/jline/style/StyledWriter;->terminal:Lorg/jline/terminal/Terminal;

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedString;->toAnsi(Lorg/jline/terminal/Terminal;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 49
    return-void
.end method
