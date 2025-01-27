.class public Lcom/alcineo/softpos/lcianoe;
.super Lcom/alcineo/softpos/ioecanl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/softpos/lcianoe$acileon;
    }
.end annotation


# instance fields
.field private nacieol:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end field

.field private ocenlai:Lcom/alcineo/softpos/lcianoe$acileon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aenciol;Lcom/alcineo/softpos/lcianoe$acileon;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/alcineo/softpos/ioecanl;-><init>(Lcom/alcineo/softpos/aenciol;Ljava/lang/Exception;)V

    iput-object p2, p0, Lcom/alcineo/softpos/lcianoe;->ocenlai:Lcom/alcineo/softpos/lcianoe$acileon;

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aenciol;Lcom/alcineo/softpos/lcianoe$acileon;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/aenciol;",
            "Lcom/alcineo/softpos/lcianoe$acileon;",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioecanl;-><init>(Lcom/alcineo/softpos/aenciol;)V

    iput-object p3, p0, Lcom/alcineo/softpos/lcianoe;->nacieol:Ljava/util/List;

    iput-object p2, p0, Lcom/alcineo/softpos/lcianoe;->ocenlai:Lcom/alcineo/softpos/lcianoe$acileon;

    return-void
.end method


# virtual methods
.method public native nacieol()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end method

.method public native noelcai()Lcom/alcineo/softpos/lcianoe$acileon;
.end method
