.class public interface abstract Lorg/osgi/service/condpermadmin/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# static fields
.field public static final FALSE:Lorg/osgi/service/condpermadmin/Condition;

.field public static final TRUE:Lorg/osgi/service/condpermadmin/Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lorg/osgi/service/condpermadmin/BooleanCondition;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/osgi/service/condpermadmin/BooleanCondition;-><init>(Z)V

    sput-object v0, Lorg/osgi/service/condpermadmin/Condition;->TRUE:Lorg/osgi/service/condpermadmin/Condition;

    .line 42
    new-instance v0, Lorg/osgi/service/condpermadmin/BooleanCondition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/osgi/service/condpermadmin/BooleanCondition;-><init>(Z)V

    sput-object v0, Lorg/osgi/service/condpermadmin/Condition;->FALSE:Lorg/osgi/service/condpermadmin/Condition;

    return-void
.end method


# virtual methods
.method public abstract isMutable()Z
.end method

.method public abstract isPostponed()Z
.end method

.method public abstract isSatisfied()Z
.end method

.method public abstract isSatisfied([Lorg/osgi/service/condpermadmin/Condition;Ljava/util/Dictionary;)Z
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
.end method
