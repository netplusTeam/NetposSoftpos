.class final Lorg/osgi/service/condpermadmin/BooleanCondition;
.super Ljava/lang/Object;
.source "Condition.java"

# interfaces
.implements Lorg/osgi/service/condpermadmin/Condition;


# instance fields
.field private final satisfied:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "satisfied"    # Z

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean p1, p0, Lorg/osgi/service/condpermadmin/BooleanCondition;->satisfied:Z

    .line 119
    return-void
.end method


# virtual methods
.method public isMutable()Z
    .locals 1

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public isPostponed()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isSatisfied()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lorg/osgi/service/condpermadmin/BooleanCondition;->satisfied:Z

    return v0
.end method

.method public isSatisfied([Lorg/osgi/service/condpermadmin/Condition;Ljava/util/Dictionary;)Z
    .locals 3
    .param p1, "conds"    # [Lorg/osgi/service/condpermadmin/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/osgi/service/condpermadmin/Condition;",
            "Ljava/util/Dictionary<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 134
    .local p2, "context":Ljava/util/Dictionary;, "Ljava/util/Dictionary<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 135
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/osgi/service/condpermadmin/Condition;->isSatisfied()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    const/4 v2, 0x0

    return v2

    .line 134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
