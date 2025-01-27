.class public Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;
.super Lcom/sun/jna/Union;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventUnion"
.end annotation


# instance fields
.field public FocusEvent:Lorg/jline/terminal/impl/jna/win/Kernel32$FOCUS_EVENT_RECORD;

.field public KeyEvent:Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;

.field public MenuEvent:Lorg/jline/terminal/impl/jna/win/Kernel32$MENU_EVENT_RECORD;

.field public MouseEvent:Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;

.field public WindowBufferSizeEvent:Lorg/jline/terminal/impl/jna/win/Kernel32$WINDOW_BUFFER_SIZE_RECORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 424
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    return-void
.end method
