.class public interface abstract Lorg/jline/builtins/telnet/Telnet$ShellProvider;
.super Ljava/lang/Object;
.source "Telnet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/telnet/Telnet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShellProvider"
.end annotation


# virtual methods
.method public abstract shell(Lorg/jline/terminal/Terminal;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/terminal/Terminal;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
