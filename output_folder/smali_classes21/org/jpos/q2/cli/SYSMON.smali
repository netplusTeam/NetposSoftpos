.class public Lorg/jpos/q2/cli/SYSMON;
.super Ljava/lang/Object;
.source "SYSMON.java"

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
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/jpos/util/SystemMonitor;

    invoke-direct {v0}, Lorg/jpos/util/SystemMonitor;-><init>()V

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Lorg/jpos/q2/CLIContext;->printLoggeable(Lorg/jpos/util/Loggeable;Ljava/lang/String;)V

    .line 29
    return-void
.end method
