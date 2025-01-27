.class Lorg/jline/builtins/telnet/Telnet$1;
.super Lorg/jline/builtins/telnet/ConnectionManager;
.source "Telnet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jline/builtins/telnet/Telnet;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jline/builtins/telnet/Telnet;


# direct methods
.method constructor <init>(Lorg/jline/builtins/telnet/Telnet;IIIILorg/jline/builtins/telnet/ConnectionFilter;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "this$0"    # Lorg/jline/builtins/telnet/Telnet;
    .param p2, "con"    # I
    .param p3, "timew"    # I
    .param p4, "timedis"    # I
    .param p5, "hoke"    # I
    .param p6, "filter"    # Lorg/jline/builtins/telnet/ConnectionFilter;
    .param p7, "lsh"    # Ljava/lang/String;
    .param p8, "lm"    # Z

    .line 97
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lorg/jline/builtins/telnet/Telnet$1;->this$0:Lorg/jline/builtins/telnet/Telnet;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/jline/builtins/telnet/ConnectionManager;-><init>(IIIILorg/jline/builtins/telnet/ConnectionFilter;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected createConnection(Ljava/lang/ThreadGroup;Lorg/jline/builtins/telnet/ConnectionData;)Lorg/jline/builtins/telnet/Connection;
    .locals 1
    .param p1, "threadGroup"    # Ljava/lang/ThreadGroup;
    .param p2, "newCD"    # Lorg/jline/builtins/telnet/ConnectionData;

    .line 100
    new-instance v0, Lorg/jline/builtins/telnet/Telnet$1$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/jline/builtins/telnet/Telnet$1$1;-><init>(Lorg/jline/builtins/telnet/Telnet$1;Ljava/lang/ThreadGroup;Lorg/jline/builtins/telnet/ConnectionData;)V

    return-object v0
.end method
