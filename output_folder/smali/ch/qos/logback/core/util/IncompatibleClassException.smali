.class public Lch/qos/logback/core/util/IncompatibleClassException;
.super Ljava/lang/Exception;
.source "IncompatibleClassException.java"


# static fields
.field private static final serialVersionUID:J = -0x50d0c620258ad37dL


# instance fields
.field obtainedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field requestedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 24
    .local p1, "requestedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "obtainedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 25
    iput-object p1, p0, Lch/qos/logback/core/util/IncompatibleClassException;->requestedClass:Ljava/lang/Class;

    .line 26
    iput-object p2, p0, Lch/qos/logback/core/util/IncompatibleClassException;->obtainedClass:Ljava/lang/Class;

    .line 27
    return-void
.end method
