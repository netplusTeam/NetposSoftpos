.class final Lio/netty/util/internal/TypeParameterMatcher$ReflectiveMatcher;
.super Lio/netty/util/internal/TypeParameterMatcher;
.source "TypeParameterMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/TypeParameterMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReflectiveMatcher"
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 155
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lio/netty/util/internal/TypeParameterMatcher;-><init>()V

    .line 156
    iput-object p1, p0, Lio/netty/util/internal/TypeParameterMatcher$ReflectiveMatcher;->type:Ljava/lang/Class;

    .line 157
    return-void
.end method


# virtual methods
.method public match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lio/netty/util/internal/TypeParameterMatcher$ReflectiveMatcher;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
