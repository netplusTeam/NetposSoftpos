.class public Lcom/itextpdf/kernel/log/SystemOutCounterFactory;
.super Ljava/lang/Object;
.source "SystemOutCounterFactory.java"

# interfaces
.implements Lcom/itextpdf/kernel/log/ICounterFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCounter(Ljava/lang/Class;)Lcom/itextpdf/kernel/log/ICounter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/itextpdf/kernel/log/ICounter;"
        }
    .end annotation

    .line 55
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/itextpdf/kernel/log/SystemOutCounter;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/log/SystemOutCounter;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lcom/itextpdf/kernel/log/SystemOutCounter;-><init>()V

    :goto_0
    return-object v0
.end method
