.class public Lorg/jpos/util/FrozenLogEvent;
.super Lorg/jpos/util/LogEvent;
.source "FrozenLogEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x785ab7271d809560L


# instance fields
.field private frozen:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "frozen"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lorg/jpos/util/LogEvent;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/jpos/util/FrozenLogEvent;->frozen:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/jpos/util/LogEvent;)V
    .locals 3
    .param p1, "evt"    # Lorg/jpos/util/LogEvent;

    .line 31
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getSource()Lorg/jpos/util/LogSource;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/FrozenLogEvent;->frozen:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "ps"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lorg/jpos/util/FrozenLogEvent;->frozen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/jpos/util/FrozenLogEvent;->frozen:Ljava/lang/String;

    return-object v0
.end method
