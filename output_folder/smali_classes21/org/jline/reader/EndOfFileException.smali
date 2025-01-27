.class public Lorg/jline/reader/EndOfFileException;
.super Ljava/lang/RuntimeException;
.source "EndOfFileException.java"


# static fields
.field private static final serialVersionUID:J = 0x7558ea2beeff671L


# instance fields
.field private partialLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "enableSuppression"    # Z
    .param p4, "writableStackTrace"    # Z

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getPartialLine()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jline/reader/EndOfFileException;->partialLine:Ljava/lang/String;

    return-object v0
.end method

.method public partialLine(Ljava/lang/String;)Lorg/jline/reader/EndOfFileException;
    .locals 0
    .param p1, "partialLine"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lorg/jline/reader/EndOfFileException;->partialLine:Ljava/lang/String;

    .line 41
    return-object p0
.end method
