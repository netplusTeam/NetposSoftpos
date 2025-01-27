.class public Lorg/jpos/iso/IsoFieldHeaderFormatter;
.super Ljava/lang/Object;
.source "IsoFieldHeaderFormatter.java"


# static fields
.field public static LENGTH_FIRST:Lorg/jpos/iso/IsoFieldHeaderFormatter;

.field public static TAG_FIRST:Lorg/jpos/iso/IsoFieldHeaderFormatter;


# instance fields
.field private tagFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lorg/jpos/iso/IsoFieldHeaderFormatter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/jpos/iso/IsoFieldHeaderFormatter;-><init>(Z)V

    sput-object v0, Lorg/jpos/iso/IsoFieldHeaderFormatter;->TAG_FIRST:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 67
    new-instance v0, Lorg/jpos/iso/IsoFieldHeaderFormatter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jpos/iso/IsoFieldHeaderFormatter;-><init>(Z)V

    sput-object v0, Lorg/jpos/iso/IsoFieldHeaderFormatter;->LENGTH_FIRST:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "tagFirst"    # Z

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lorg/jpos/iso/IsoFieldHeaderFormatter;->tagFirst:Z

    .line 27
    return-void
.end method


# virtual methods
.method public format(Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Prefixer;[B[B[B)V
    .locals 3
    .param p1, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p2, "lengthPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p3, "tagData"    # [B
    .param p4, "lengthData"    # [B
    .param p5, "destinationData"    # [B

    .line 52
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 53
    iget-boolean v0, p0, Lorg/jpos/iso/IsoFieldHeaderFormatter;->tagFirst:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    :goto_0
    invoke-interface {p1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v2

    invoke-static {p3, v1, p5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-boolean v0, p0, Lorg/jpos/iso/IsoFieldHeaderFormatter;->tagFirst:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-interface {p2}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v2

    invoke-static {p4, v1, p5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    :cond_2
    return-void
.end method

.method public format(Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Prefixer;[B[B)[B
    .locals 7
    .param p1, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p2, "lengthPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p3, "tagData"    # [B
    .param p4, "lengthData"    # [B

    .line 43
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 44
    invoke-interface {p1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    invoke-interface {p2}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 45
    .local v0, "destinationData":[B
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->format(Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Prefixer;[B[B[B)V

    .line 46
    return-object v0

    .line 48
    .end local v0    # "destinationData":[B
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLengthIndex(Lorg/jpos/iso/Prefixer;)I
    .locals 1
    .param p1, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;

    .line 63
    iget-boolean v0, p0, Lorg/jpos/iso/IsoFieldHeaderFormatter;->tagFirst:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTagIndex(Lorg/jpos/iso/Prefixer;)I
    .locals 1
    .param p1, "lengthPrefixer"    # Lorg/jpos/iso/Prefixer;

    .line 59
    iget-boolean v0, p0, Lorg/jpos/iso/IsoFieldHeaderFormatter;->tagFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTotalLength(Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Prefixer;)I
    .locals 2
    .param p1, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p2, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 70
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 73
    invoke-interface {p1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    invoke-interface {p2}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither tag or length prefixer was provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isTagFirst()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lorg/jpos/iso/IsoFieldHeaderFormatter;->tagFirst:Z

    return v0
.end method
