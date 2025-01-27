.class public interface abstract Lorg/jpos/q2/QBean;
.super Ljava/lang/Object;
.source "QBean.java"


# static fields
.field public static final DESTROYED:I = 0x5

.field public static final FAILED:I = 0x4

.field public static final STARTED:I = 0x3

.field public static final STARTING:I = 0x2

.field public static final STOPPED:I = 0x0

.field public static final STOPPING:I = 0x1

.field public static final stateString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    const-string v0, "Stopped"

    const-string v1, "Stopping"

    const-string v2, "Starting"

    const-string v3, "Started"

    const-string v4, "Failed"

    const-string v5, "Destroyed"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jpos/q2/QBean;->stateString:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract getStateAsString()Ljava/lang/String;
.end method

.method public abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
