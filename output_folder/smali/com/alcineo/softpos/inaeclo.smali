.class public Lcom/alcineo/softpos/inaeclo;
.super Lcom/alcineo/softpos/ioecanl;
.source "SourceFile"


# instance fields
.field private lneaico:Z

.field private nacieol:Ljava/math/BigDecimal;

.field private noelcai:Z

.field private ocenlai:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aenciol;ZZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioecanl;-><init>(Lcom/alcineo/softpos/aenciol;)V

    iput-boolean p2, p0, Lcom/alcineo/softpos/inaeclo;->noelcai:Z

    iput-boolean p3, p0, Lcom/alcineo/softpos/inaeclo;->lneaico:Z

    return-void
.end method


# virtual methods
.method public native acileon(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native lneaico()Z
.end method

.method public native nacieol()Ljava/math/BigDecimal;
.end method

.method public native noelcai()Ljava/math/BigDecimal;
.end method

.method public native ocleina()Z
.end method
