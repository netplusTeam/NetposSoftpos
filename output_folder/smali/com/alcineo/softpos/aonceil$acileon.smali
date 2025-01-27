.class public Lcom/alcineo/softpos/aonceil$acileon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/softpos/aonceil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "acileon"
.end annotation


# instance fields
.field private final acileon:Ljava/lang/Integer;

.field private final aoleinc:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/alcineo/softpos/oeicanl;->aoleinc()[B

    invoke-virtual {p1}, Lcom/alcineo/softpos/oeicanl;->noaceli()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alcineo/softpos/aonceil$acileon;->acileon:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/alcineo/softpos/oeicanl;->aoleinc()[B

    move-result-object p1

    iput-object p1, p0, Lcom/alcineo/softpos/aonceil$acileon;->aoleinc:[B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/alcineo/softpos/oeicanl;Lcom/alcineo/softpos/oecanli;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/aonceil$acileon;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-void
.end method


# virtual methods
.method public native acileon()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvException;
        }
    .end annotation
.end method

.method public native aoleinc()Ljava/lang/Integer;
.end method
