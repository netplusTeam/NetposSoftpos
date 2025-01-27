.class public interface abstract Lorg/jline/terminal/Terminal;
.super Ljava/lang/Object;
.source "Terminal.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/terminal/Terminal$MouseTracking;,
        Lorg/jline/terminal/Terminal$SignalHandler;,
        Lorg/jline/terminal/Terminal$Signal;
    }
.end annotation


# static fields
.field public static final TYPE_DUMB:Ljava/lang/String; = "dumb"

.field public static final TYPE_DUMB_COLOR:Ljava/lang/String; = "dumb-color"


# virtual methods
.method public abstract canPauseResume()Z
.end method

.method public abstract echo()Z
.end method

.method public abstract echo(Z)Z
.end method

.method public abstract encoding()Ljava/nio/charset/Charset;
.end method

.method public abstract enterRawMode()Lorg/jline/terminal/Attributes;
.end method

.method public abstract flush()V
.end method

.method public abstract getAttributes()Lorg/jline/terminal/Attributes;
.end method

.method public abstract getBooleanCapability(Lorg/jline/utils/InfoCmp$Capability;)Z
.end method

.method public getBufferSize()Lorg/jline/terminal/Size;
    .locals 1

    .line 217
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCursorPosition(Ljava/util/function/IntConsumer;)Lorg/jline/terminal/Cursor;
.end method

.method public getHeight()I
    .locals 1

    .line 201
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getRows()I

    move-result v0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumericCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/Integer;
.end method

.method public abstract getPalette()Lorg/jline/utils/ColorPalette;
.end method

.method public abstract getSize()Lorg/jline/terminal/Size;
.end method

.method public abstract getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public getWidth()I
    .locals 1

    .line 197
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v0

    return v0
.end method

.method public abstract handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;
.end method

.method public abstract hasFocusSupport()Z
.end method

.method public abstract hasMouseSupport()Z
.end method

.method public abstract input()Ljava/io/InputStream;
.end method

.method public abstract output()Ljava/io/OutputStream;
.end method

.method public abstract pause()V
.end method

.method public abstract pause(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract paused()Z
.end method

.method public varargs abstract puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z
.end method

.method public abstract raise(Lorg/jline/terminal/Terminal$Signal;)V
.end method

.method public abstract readMouseEvent()Lorg/jline/terminal/MouseEvent;
.end method

.method public abstract readMouseEvent(Ljava/util/function/IntSupplier;)Lorg/jline/terminal/MouseEvent;
.end method

.method public abstract reader()Lorg/jline/utils/NonBlockingReader;
.end method

.method public abstract resume()V
.end method

.method public abstract setAttributes(Lorg/jline/terminal/Attributes;)V
.end method

.method public abstract setSize(Lorg/jline/terminal/Size;)V
.end method

.method public abstract trackFocus(Z)Z
.end method

.method public abstract trackMouse(Lorg/jline/terminal/Terminal$MouseTracking;)Z
.end method

.method public abstract writer()Ljava/io/PrintWriter;
.end method
