.class public Lcom/alcineo/softpos/oielnca;
.super Lcom/alcineo/softpos/ioecanl;
.source "SourceFile"


# instance fields
.field private nacieol:[B

.field private ocenlai:Lcom/alcineo/softpos/iecolna;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aenciol;Lcom/alcineo/softpos/iecolna;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioecanl;-><init>(Lcom/alcineo/softpos/aenciol;)V

    iput-object p2, p0, Lcom/alcineo/softpos/oielnca;->ocenlai:Lcom/alcineo/softpos/iecolna;

    return-void
.end method


# virtual methods
.method public native nacieol()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alcineo/softpos/noicale;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvException;
        }
    .end annotation
.end method
