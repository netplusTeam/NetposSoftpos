.class public Lcom/sleepycat/je/log/FileReader$EOFException;
.super Ljava/lang/Exception;
.source "FileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/FileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EOFException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 935
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 936
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 943
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 944
    return-void
.end method
