.class public Lorg/jpos/tlv/packager/IF_FCHAR$FullyConsumingPrefixer;
.super Ljava/lang/Object;
.source "IF_FCHAR.java"

# interfaces
.implements Lorg/jpos/iso/Prefixer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/tlv/packager/IF_FCHAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullyConsumingPrefixer"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/jpos/tlv/packager/IF_FCHAR$FullyConsumingPrefixer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/jpos/tlv/packager/IF_FCHAR$FullyConsumingPrefixer;

    invoke-direct {v0}, Lorg/jpos/tlv/packager/IF_FCHAR$FullyConsumingPrefixer;-><init>()V

    sput-object v0, Lorg/jpos/tlv/packager/IF_FCHAR$FullyConsumingPrefixer;->INSTANCE:Lorg/jpos/tlv/packager/IF_FCHAR$FullyConsumingPrefixer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000()Lorg/jpos/tlv/packager/IF_FCHAR$FullyConsumingPrefixer;
    .locals 1

    .line 39
    sget-object v0, Lorg/jpos/tlv/packager/IF_FCHAR$FullyConsumingPrefixer;->INSTANCE:Lorg/jpos/tlv/packager/IF_FCHAR$FullyConsumingPrefixer;

    return-object v0
.end method


# virtual methods
.method public decodeLength([BI)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 53
    array-length v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public encodeLength(I[B)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public getPackedLength()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method
