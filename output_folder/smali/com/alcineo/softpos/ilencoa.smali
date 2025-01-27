.class public final Lcom/alcineo/softpos/ilencoa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/softpos/ilencoa$acileon;
    }
.end annotation


# instance fields
.field private acileon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/inelcao;",
            ">;"
        }
    .end annotation
.end field

.field private aoleinc:Ljava/lang/String;

.field private enolcai:Ljava/lang/String;

.field private lneaico:Z

.field private nacieol:Lcom/alcineo/softpos/ilencoa$acileon;

.field private noaceli:Ljava/lang/String;

.field private noelcai:Ljava/lang/Byte;

.field private ocenlai:Lcom/alcineo/utils/tlv/TlvTag;

.field private ocleina:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/utils/tlv/TlvTag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Byte;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alcineo/softpos/ilencoa;->acileon:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/alcineo/softpos/ilencoa;->aoleinc:Ljava/lang/String;

    iput-object v0, p0, Lcom/alcineo/softpos/ilencoa;->noaceli:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alcineo/softpos/ilencoa;->enolcai:Ljava/lang/String;

    sget-object v0, Lcom/alcineo/softpos/ilencoa$acileon;->acileon:Lcom/alcineo/softpos/ilencoa$acileon;

    iput-object v0, p0, Lcom/alcineo/softpos/ilencoa;->nacieol:Lcom/alcineo/softpos/ilencoa$acileon;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alcineo/softpos/ilencoa;->lneaico:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alcineo/softpos/ilencoa;->ocleina:Z

    iput-object p1, p0, Lcom/alcineo/softpos/ilencoa;->ocenlai:Lcom/alcineo/utils/tlv/TlvTag;

    iput-object p2, p0, Lcom/alcineo/softpos/ilencoa;->noaceli:Ljava/lang/String;

    iput-object p3, p0, Lcom/alcineo/softpos/ilencoa;->aoleinc:Ljava/lang/String;

    iput-object p4, p0, Lcom/alcineo/softpos/ilencoa;->noelcai:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/utils/tlv/TlvTag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Byte;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alcineo/softpos/ilencoa;-><init>(Lcom/alcineo/utils/tlv/TlvTag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Byte;)V

    iput-boolean p5, p0, Lcom/alcineo/softpos/ilencoa;->lneaico:Z

    iput-boolean p6, p0, Lcom/alcineo/softpos/ilencoa;->ocleina:Z

    return-void
.end method

.method public static native acileon(Lcom/alcineo/utils/tlv/TlvTag;)Lcom/alcineo/softpos/ilencoa;
.end method

.method public static native acileon(Ljava/util/Map;Lcom/alcineo/utils/tlv/TlvTag;Ljava/lang/Byte;)Lcom/alcineo/softpos/ilencoa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/alcineo/utils/tlv/TlvTag;",
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/ilencoa;",
            ">;>;",
            "Lcom/alcineo/utils/tlv/TlvTag;",
            "Ljava/lang/Byte;",
            ")",
            "Lcom/alcineo/softpos/ilencoa;"
        }
    .end annotation
.end method


# virtual methods
.method public native acileon()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/inelcao;",
            ">;"
        }
    .end annotation
.end method

.method public native acileon(Lcom/alcineo/softpos/ilencoa$acileon;)V
.end method

.method public native acileon(Lcom/alcineo/softpos/inelcao;)V
.end method

.method public native acileon(Ljava/lang/String;)V
.end method

.method public native acileon(B)Z
.end method

.method public native aoleinc()Ljava/lang/String;
.end method

.method public native enolcai()Ljava/lang/String;
.end method

.method public native icloane()Z
.end method

.method public native lneaico()Lcom/alcineo/softpos/ilencoa$acileon;
.end method

.method public native nacieol()Ljava/lang/String;
.end method

.method public native noaceli()Ljava/lang/Byte;
.end method

.method public native noelcai()Ljava/lang/String;
.end method

.method public native ocenlai()Lcom/alcineo/utils/tlv/TlvTag;
.end method

.method public native ocleina()Z
.end method

.method public native oecnlia()Z
.end method

.method public native toString()Ljava/lang/String;
.end method
