.class public Lcom/alcineo/softpos/oecanli;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private acileon:J

.field private aoleinc:J

.field private final enolcai:Lcom/alcineo/softpos/ociealn;

.field private final noaceli:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/alcineo/softpos/ociealn;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alcineo/softpos/oecanli;->acileon:J

    iput-wide v0, p0, Lcom/alcineo/softpos/oecanli;->aoleinc:J

    iput-object p1, p0, Lcom/alcineo/softpos/oecanli;->noaceli:Ljava/lang/Class;

    iput-object p2, p0, Lcom/alcineo/softpos/oecanli;->enolcai:Lcom/alcineo/softpos/ociealn;

    iput-wide p3, p0, Lcom/alcineo/softpos/oecanli;->acileon:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alcineo/softpos/oecanli;->aoleinc:J

    return-void
.end method


# virtual methods
.method public native acileon()Lcom/alcineo/softpos/ociealn;
.end method

.method public native acileon(Ljava/lang/Object;)V
.end method

.method public native aoleinc()Ljava/lang/Class;
.end method

.method public native aoleinc(Ljava/lang/Object;)Z
.end method

.method public native enolcai()Z
.end method

.method public native noaceli()Z
.end method
