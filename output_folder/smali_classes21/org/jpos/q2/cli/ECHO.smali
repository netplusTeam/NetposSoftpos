.class public Lorg/jpos/q2/cli/ECHO;
.super Ljava/lang/Object;
.source "ECHO.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 2
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->unPadLeft(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 31
    return-void
.end method
