.class public Lorg/jpos/tlv/packager/IF_FBINARY$FullyConsumingPrefixer;
.super Ljava/lang/Object;
.source "IF_FBINARY.java"

# interfaces
.implements Lorg/jpos/iso/Prefixer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/tlv/packager/IF_FBINARY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullyConsumingPrefixer"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/jpos/tlv/packager/IF_FBINARY$FullyConsumingPrefixer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/jpos/tlv/packager/IF_FBINARY$FullyConsumingPrefixer;

    invoke-direct {v0}, Lorg/jpos/tlv/packager/IF_FBINARY$FullyConsumingPrefixer;-><init>()V

    sput-object v0, Lorg/jpos/tlv/packager/IF_FBINARY$FullyConsumingPrefixer;->INSTANCE:Lorg/jpos/tlv/packager/IF_FBINARY$FullyConsumingPrefixer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000()Lorg/jpos/tlv/packager/IF_FBINARY$FullyConsumingPrefixer;
    .locals 1

    .line 36
    sget-object v0, Lorg/jpos/tlv/packager/IF_FBINARY$FullyConsumingPrefixer;->INSTANCE:Lorg/jpos/tlv/packager/IF_FBINARY$FullyConsumingPrefixer;

    return-object v0
.end method


# virtual methods
.method public decodeLength([BI)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .line 50
    array-length v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public encodeLength(I[B)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "bytes"    # [B

    .line 46
    return-void
.end method

.method public getPackedLength()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method
