.class public Lcom/alcineo/softpos/laniceo;
.super Lcom/alcineo/softpos/ioecanl;
.source "SourceFile"


# instance fields
.field private lneaico:[B

.field private nacieol:Ljava/util/Date;

.field private noelcai:Ljava/lang/Byte;

.field private ocenlai:I

.field private ocleina:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aenciol;ILjava/util/Date;Ljava/lang/Byte;[B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioecanl;-><init>(Lcom/alcineo/softpos/aenciol;)V

    iput p2, p0, Lcom/alcineo/softpos/laniceo;->ocenlai:I

    iput-object p3, p0, Lcom/alcineo/softpos/laniceo;->nacieol:Ljava/util/Date;

    iput-object p4, p0, Lcom/alcineo/softpos/laniceo;->noelcai:Ljava/lang/Byte;

    iput-object p5, p0, Lcom/alcineo/softpos/laniceo;->lneaico:[B

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p5, p1}, Lcom/alcineo/utils/tlv/TlvParser;->decode([BI)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/alcineo/softpos/laniceo;->ocleina:Ljava/util/List;
    :try_end_0
    .catch Lcom/alcineo/utils/tlv/TlvException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p2, p0, Lcom/alcineo/softpos/laniceo;->lneaico:[B

    array-length p3, p2

    const/4 p4, 0x4

    add-int/2addr p3, p4

    new-array p3, p3, [B

    const/16 p5, -0x2b

    aput-byte p5, p3, p1

    const/4 p5, 0x1

    const/16 v0, -0x7e

    aput-byte v0, p3, p5

    array-length p5, p2

    shr-int/lit8 p5, p5, 0x8

    and-int/lit16 p5, p5, 0xff

    int-to-byte p5, p5

    const/4 v0, 0x2

    aput-byte p5, p3, v0

    array-length p5, p2

    int-to-byte p5, p5

    const/4 v0, 0x3

    aput-byte p5, p3, v0

    array-length p5, p2

    invoke-static {p2, p1, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_1
    invoke-static {p3, p1}, Lcom/alcineo/utils/tlv/TlvParser;->decode([BI)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alcineo/softpos/laniceo;->ocleina:Ljava/util/List;
    :try_end_1
    .catch Lcom/alcineo/utils/tlv/TlvException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aenciol;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alcineo/softpos/ioecanl;-><init>(Lcom/alcineo/softpos/aenciol;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public native icloane()Ljava/util/Date;
.end method

.method public native lneaico()I
.end method

.method public native nacieol()[B
.end method

.method public native noelcai()Ljava/lang/Byte;
.end method

.method public native ocleina()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end method
