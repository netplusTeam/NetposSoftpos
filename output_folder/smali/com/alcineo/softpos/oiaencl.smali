.class public Lcom/alcineo/softpos/oiaencl;
.super Lcom/alcineo/softpos/ioecanl;
.source "SourceFile"


# instance fields
.field private nacieol:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private noelcai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end field

.field private ocenlai:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aenciol;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioecanl;-><init>(Lcom/alcineo/softpos/aenciol;)V

    iput-object p2, p0, Lcom/alcineo/softpos/oiaencl;->ocenlai:[B

    :try_start_0
    invoke-virtual {p0}, Lcom/alcineo/softpos/oiaencl;->nacieol()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alcineo/utils/tlv/TlvParser;->decode([BI)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alcineo/softpos/oiaencl;->noelcai:Ljava/util/List;
    :try_end_0
    .catch Lcom/alcineo/utils/tlv/TlvException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public native acileon(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native lneaico()Ljava/lang/String;
.end method

.method public native nacieol()[B
.end method

.method public native noelcai()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
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
