.class public Lorg/jpos/iso/RightTPadder;
.super Lorg/jpos/iso/RightPadder;
.source "RightTPadder.java"


# static fields
.field public static final SPACE_PADDER:Lorg/jpos/iso/RightTPadder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lorg/jpos/iso/RightTPadder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/jpos/iso/RightTPadder;-><init>(C)V

    sput-object v0, Lorg/jpos/iso/RightTPadder;->SPACE_PADDER:Lorg/jpos/iso/RightTPadder;

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0
    .param p1, "pad"    # C

    .line 46
    invoke-direct {p0, p1}, Lorg/jpos/iso/RightPadder;-><init>(C)V

    .line 47
    return-void
.end method


# virtual methods
.method public pad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lorg/jpos/iso/RightPadder;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jpos/iso/RightPadder;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
