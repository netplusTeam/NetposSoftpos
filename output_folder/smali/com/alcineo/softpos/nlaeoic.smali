.class public Lcom/alcineo/softpos/nlaeoic;
.super Lcom/alcineo/softpos/ioecanl;
.source "SourceFile"


# instance fields
.field private nacieol:[B

.field private ocenlai:Ljava/util/List;
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

.method public constructor <init>(Lcom/alcineo/softpos/aenciol;Ljava/util/List;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/aenciol;",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;[B)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioecanl;-><init>(Lcom/alcineo/softpos/aenciol;)V

    iput-object p2, p0, Lcom/alcineo/softpos/nlaeoic;->ocenlai:Ljava/util/List;

    iput-object p3, p0, Lcom/alcineo/softpos/nlaeoic;->nacieol:[B

    return-void
.end method


# virtual methods
.method public native nacieol()Ljava/lang/String;
.end method

.method public native noelcai()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end method
