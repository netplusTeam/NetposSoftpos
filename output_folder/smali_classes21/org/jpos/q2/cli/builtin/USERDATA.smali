.class public Lorg/jpos/q2/cli/builtin/USERDATA;
.super Ljava/lang/Object;
.source "USERDATA.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 0
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->printUserData()V

    .line 33
    return-void
.end method
