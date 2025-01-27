.class public final synthetic Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/danbamitale/epmslib/processors/TerminalConfigurator;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;Ljava/lang/String;Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda0;->f$0:Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;

    iput-object p2, p0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda0;->f$2:Lcom/danbamitale/epmslib/processors/TerminalConfigurator;

    iput-object p4, p0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda0;->f$0:Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;

    iget-object v1, p0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda0;->f$2:Lcom/danbamitale/epmslib/processors/TerminalConfigurator;

    iget-object v3, p0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->$r8$lambda$RYeARxeytJXIMtGP3YuyFuRXLeg(Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;Ljava/lang/String;Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
