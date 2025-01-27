.class public Lorg/jpos/q2/Activator;
.super Ljava/lang/Object;
.source "Activator.java"

# interfaces
.implements Lorg/osgi/framework/BundleActivator;


# instance fields
.field q2:Lorg/jpos/q2/Q2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/osgi/framework/BundleContext;)V
    .locals 2
    .param p1, "context"    # Lorg/osgi/framework/BundleContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    const-string v0, "org.jpos.q2.autostart"

    invoke-interface {p1, v0}, Lorg/osgi/framework/BundleContext;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lorg/jpos/q2/Q2;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/jpos/q2/Q2;-><init>([Ljava/lang/String;Lorg/osgi/framework/BundleContext;)V

    iput-object v0, p0, Lorg/jpos/q2/Activator;->q2:Lorg/jpos/q2/Q2;

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->start()V

    .line 32
    :cond_0
    return-void
.end method

.method public stop(Lorg/osgi/framework/BundleContext;)V
    .locals 1
    .param p1, "context"    # Lorg/osgi/framework/BundleContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/jpos/q2/Activator;->q2:Lorg/jpos/q2/Q2;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->stop()V

    .line 38
    :cond_0
    return-void
.end method
