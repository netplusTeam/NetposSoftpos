.class public Lorg/jline/reader/UserInterruptException;
.super Ljava/lang/RuntimeException;
.source "UserInterruptException.java"


# static fields
.field private static final serialVersionUID:J = 0x55a82cd28d8b50eeL


# instance fields
.field private final partialLine:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "partialLine"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/jline/reader/UserInterruptException;->partialLine:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getPartialLine()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/jline/reader/UserInterruptException;->partialLine:Ljava/lang/String;

    return-object v0
.end method
