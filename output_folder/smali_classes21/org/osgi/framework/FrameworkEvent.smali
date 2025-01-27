.class public Lorg/osgi/framework/FrameworkEvent;
.super Ljava/util/EventObject;
.source "FrameworkEvent.java"


# static fields
.field public static final ERROR:I = 0x2

.field public static final INFO:I = 0x20

.field public static final PACKAGES_REFRESHED:I = 0x4

.field public static final STARTED:I = 0x1

.field public static final STARTLEVEL_CHANGED:I = 0x8

.field public static final STOPPED:I = 0x40

.field public static final STOPPED_BOOTCLASSPATH_MODIFIED:I = 0x100

.field public static final STOPPED_UPDATE:I = 0x80

.field public static final WAIT_TIMEDOUT:I = 0x200

.field public static final WARNING:I = 0x10

.field static final serialVersionUID:J = 0x2df97caa6e0aa89L


# instance fields
.field private final bundle:Lorg/osgi/framework/Bundle;

.field private final throwable:Ljava/lang/Throwable;

.field private final type:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "source"    # Ljava/lang/Object;

    .line 181
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 182
    iput p1, p0, Lorg/osgi/framework/FrameworkEvent;->type:I

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/FrameworkEvent;->bundle:Lorg/osgi/framework/Bundle;

    .line 184
    iput-object v0, p0, Lorg/osgi/framework/FrameworkEvent;->throwable:Ljava/lang/Throwable;

    .line 185
    return-void
.end method

.method public constructor <init>(ILorg/osgi/framework/Bundle;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "bundle"    # Lorg/osgi/framework/Bundle;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 196
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 197
    iput p1, p0, Lorg/osgi/framework/FrameworkEvent;->type:I

    .line 198
    iput-object p2, p0, Lorg/osgi/framework/FrameworkEvent;->bundle:Lorg/osgi/framework/Bundle;

    .line 199
    iput-object p3, p0, Lorg/osgi/framework/FrameworkEvent;->throwable:Ljava/lang/Throwable;

    .line 200
    return-void
.end method


# virtual methods
.method public getBundle()Lorg/osgi/framework/Bundle;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/osgi/framework/FrameworkEvent;->bundle:Lorg/osgi/framework/Bundle;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/osgi/framework/FrameworkEvent;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 242
    iget v0, p0, Lorg/osgi/framework/FrameworkEvent;->type:I

    return v0
.end method
