.class public Lorg/jline/builtins/telnet/ConnectionEvent;
.super Ljava/lang/Object;
.source "ConnectionEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/telnet/ConnectionEvent$Type;
    }
.end annotation


# instance fields
.field private final source:Lorg/jline/builtins/telnet/Connection;

.field private final type:Lorg/jline/builtins/telnet/ConnectionEvent$Type;


# direct methods
.method public constructor <init>(Lorg/jline/builtins/telnet/Connection;Lorg/jline/builtins/telnet/ConnectionEvent$Type;)V
    .locals 0
    .param p1, "source"    # Lorg/jline/builtins/telnet/Connection;
    .param p2, "type"    # Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lorg/jline/builtins/telnet/ConnectionEvent;->type:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    .line 68
    iput-object p1, p0, Lorg/jline/builtins/telnet/ConnectionEvent;->source:Lorg/jline/builtins/telnet/Connection;

    .line 69
    return-void
.end method


# virtual methods
.method public getSource()Lorg/jline/builtins/telnet/Connection;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionEvent;->source:Lorg/jline/builtins/telnet/Connection;

    return-object v0
.end method

.method public getType()Lorg/jline/builtins/telnet/ConnectionEvent$Type;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionEvent;->type:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    return-object v0
.end method
