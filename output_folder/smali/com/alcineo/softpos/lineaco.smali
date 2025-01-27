.class public Lcom/alcineo/softpos/lineaco;
.super Lcom/alcineo/softpos/aielocn;
.source "SourceFile"


# instance fields
.field private enolcai:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alcineo/softpos/aielocn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x2

    rem-int/2addr p2, v0

    if-nez p2, :cond_1

    const-string p2, "0x"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alcineo/softpos/aielocn;->acileon:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/alcineo/softpos/aielocn;->acileon()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alcineo/utils/common/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/alcineo/softpos/lineaco;->enolcai:[B

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Binary pattern must be multiple of 2."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public native acileon([B)Z
.end method
