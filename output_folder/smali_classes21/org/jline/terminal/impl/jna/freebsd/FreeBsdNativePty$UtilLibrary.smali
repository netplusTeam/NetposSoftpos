.class public interface abstract Lorg/jline/terminal/impl/jna/freebsd/FreeBsdNativePty$UtilLibrary;
.super Ljava/lang/Object;
.source "FreeBsdNativePty.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/freebsd/FreeBsdNativePty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UtilLibrary"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jline/terminal/impl/jna/freebsd/FreeBsdNativePty$UtilLibrary;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-class v0, Lorg/jline/terminal/impl/jna/freebsd/FreeBsdNativePty$UtilLibrary;

    const-string v1, "util"

    invoke-static {v1, v0}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/impl/jna/freebsd/FreeBsdNativePty$UtilLibrary;

    sput-object v0, Lorg/jline/terminal/impl/jna/freebsd/FreeBsdNativePty$UtilLibrary;->INSTANCE:Lorg/jline/terminal/impl/jna/freebsd/FreeBsdNativePty$UtilLibrary;

    return-void
.end method


# virtual methods
.method public abstract openpty([I[I[BLorg/jline/terminal/impl/jna/freebsd/CLibrary$termios;Lorg/jline/terminal/impl/jna/freebsd/CLibrary$winsize;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method
