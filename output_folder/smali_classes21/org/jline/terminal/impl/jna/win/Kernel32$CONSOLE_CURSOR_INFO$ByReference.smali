.class public Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_CURSOR_INFO$ByReference;
.super Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_CURSOR_INFO;
.source "Kernel32.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_CURSOR_INFO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_CURSOR_INFO;-><init>()V

    return-void
.end method
