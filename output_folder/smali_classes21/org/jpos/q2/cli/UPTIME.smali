.class public Lorg/jpos/q2/cli/UPTIME;
.super Ljava/lang/Object;
.source "UPTIME.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->getCLI()Lorg/jpos/q2/CLI;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/CLI;->getQ2()Lorg/jpos/q2/Q2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getUptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->millisToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 29
    return-void
.end method
