.class public Lorg/jline/reader/EOFError;
.super Lorg/jline/reader/SyntaxError;
.source "EOFError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final missing:Ljava/lang/String;

.field private final nextClosingBracket:Ljava/lang/String;

.field private final openBrackets:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "column"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jline/reader/EOFError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # I
    .param p2, "column"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "missing"    # Ljava/lang/String;

    .line 34
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/jline/reader/EOFError;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "column"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "missing"    # Ljava/lang/String;
    .param p5, "openBrackets"    # I
    .param p6, "nextClosingBracket"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/jline/reader/SyntaxError;-><init>(IILjava/lang/String;)V

    .line 39
    iput-object p4, p0, Lorg/jline/reader/EOFError;->missing:Ljava/lang/String;

    .line 40
    iput p5, p0, Lorg/jline/reader/EOFError;->openBrackets:I

    .line 41
    iput-object p6, p0, Lorg/jline/reader/EOFError;->nextClosingBracket:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getMissing()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jline/reader/EOFError;->missing:Ljava/lang/String;

    return-object v0
.end method

.method public getNextClosingBracket()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jline/reader/EOFError;->nextClosingBracket:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenBrackets()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/jline/reader/EOFError;->openBrackets:I

    return v0
.end method
