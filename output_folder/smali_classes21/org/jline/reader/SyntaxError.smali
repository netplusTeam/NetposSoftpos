.class public Lorg/jline/reader/SyntaxError;
.super Ljava/lang/RuntimeException;
.source "SyntaxError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final column:I

.field private final line:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "column"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    iput p1, p0, Lorg/jline/reader/SyntaxError;->line:I

    .line 31
    iput p2, p0, Lorg/jline/reader/SyntaxError;->column:I

    .line 32
    return-void
.end method


# virtual methods
.method public column()I
    .locals 1

    .line 35
    iget v0, p0, Lorg/jline/reader/SyntaxError;->column:I

    return v0
.end method

.method public line()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/jline/reader/SyntaxError;->line:I

    return v0
.end method
