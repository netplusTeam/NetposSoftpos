.class Lcom/payneteasy/tlv/BerTlvParser$ParseResult;
.super Ljava/lang/Object;
.source "BerTlvParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payneteasy/tlv/BerTlvParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseResult"
.end annotation


# instance fields
.field private final offset:I

.field private final tlv:Lcom/payneteasy/tlv/BerTlv;


# direct methods
.method public constructor <init>(Lcom/payneteasy/tlv/BerTlv;I)V
    .locals 0
    .param p1, "aTlv"    # Lcom/payneteasy/tlv/BerTlv;
    .param p2, "aOffset"    # I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->tlv:Lcom/payneteasy/tlv/BerTlv;

    .line 159
    iput p2, p0, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->offset:I

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/payneteasy/tlv/BerTlvParser$ParseResult;)Lcom/payneteasy/tlv/BerTlv;
    .locals 1
    .param p0, "x0"    # Lcom/payneteasy/tlv/BerTlvParser$ParseResult;

    .line 156
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->tlv:Lcom/payneteasy/tlv/BerTlv;

    return-object v0
.end method

.method static synthetic access$100(Lcom/payneteasy/tlv/BerTlvParser$ParseResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/payneteasy/tlv/BerTlvParser$ParseResult;

    .line 156
    iget v0, p0, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->offset:I

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParseResult{tlv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->tlv:Lcom/payneteasy/tlv/BerTlv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
