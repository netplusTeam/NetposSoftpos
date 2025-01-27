.class public interface abstract Lorg/jline/builtins/telnet/ConnectionListener;
.super Ljava/lang/Object;
.source "ConnectionListener.java"


# virtual methods
.method public connectionIdle(Lorg/jline/builtins/telnet/ConnectionEvent;)V
    .locals 0
    .param p1, "ce"    # Lorg/jline/builtins/telnet/ConnectionEvent;

    .line 63
    return-void
.end method

.method public connectionLogoutRequest(Lorg/jline/builtins/telnet/ConnectionEvent;)V
    .locals 0
    .param p1, "ce"    # Lorg/jline/builtins/telnet/ConnectionEvent;

    .line 81
    return-void
.end method

.method public connectionSentBreak(Lorg/jline/builtins/telnet/ConnectionEvent;)V
    .locals 0
    .param p1, "ce"    # Lorg/jline/builtins/telnet/ConnectionEvent;

    .line 90
    return-void
.end method

.method public connectionTerminalGeometryChanged(Lorg/jline/builtins/telnet/ConnectionEvent;)V
    .locals 0
    .param p1, "ce"    # Lorg/jline/builtins/telnet/ConnectionEvent;

    .line 99
    return-void
.end method

.method public connectionTimedOut(Lorg/jline/builtins/telnet/ConnectionEvent;)V
    .locals 0
    .param p1, "ce"    # Lorg/jline/builtins/telnet/ConnectionEvent;

    .line 72
    return-void
.end method
