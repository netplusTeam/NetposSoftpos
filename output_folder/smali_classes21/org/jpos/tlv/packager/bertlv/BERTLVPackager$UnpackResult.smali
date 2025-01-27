.class Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;
.super Ljava/lang/Object;
.source "BERTLVPackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnpackResult"
.end annotation


# instance fields
.field private final consumed:I

.field final synthetic this$0:Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;

.field private final value:[B


# direct methods
.method private constructor <init>(Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;[BI)V
    .locals 0
    .param p2, "value"    # [B
    .param p3, "consumed"    # I

    .line 468
    iput-object p1, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;->this$0:Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p2, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;->value:[B

    .line 470
    iput p3, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;->consumed:I

    .line 471
    return-void
.end method

.method synthetic constructor <init>(Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;[BILorg/jpos/tlv/packager/bertlv/BERTLVPackager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;
    .param p2, "x1"    # [B
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$1;

    .line 463
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;-><init>(Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;[BI)V

    return-void
.end method

.method static synthetic access$000(Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;)I
    .locals 1
    .param p0, "x0"    # Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;

    .line 463
    iget v0, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;->consumed:I

    return v0
.end method

.method static synthetic access$100(Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;)[B
    .locals 1
    .param p0, "x0"    # Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;

    .line 463
    iget-object v0, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;->value:[B

    return-object v0
.end method
