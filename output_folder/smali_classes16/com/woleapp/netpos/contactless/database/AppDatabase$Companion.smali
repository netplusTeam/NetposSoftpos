.class public final Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;
.super Ljava/lang/Object;
.source "AppDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/database/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppDatabase.kt\ncom/woleapp/netpos/contactless/database/AppDatabase$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n1#2:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;",
        "",
        "()V",
        "INSTANCE",
        "Lcom/woleapp/netpos/contactless/database/AppDatabase;",
        "buildDatabase",
        "context",
        "Landroid/content/Context;",
        "getDatabaseInstance",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;-><init>()V

    return-void
.end method

.method private final buildDatabase(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const-class v0, Lcom/woleapp/netpos/contactless/database/AppDatabase;

    const-string v1, "netpos-db"

    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v0

    const-string v1, "databaseBuilder(context,\u2026\n                .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/database/AppDatabase;

    return-object v0
.end method


# virtual methods
.method public final getDatabaseInstance(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->access$getINSTANCE$cp()Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    .line 35
    .local v0, "$i$a$-synchronized-AppDatabase$Companion$getDatabaseInstance$1":I
    :try_start_0
    invoke-static {}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->access$getINSTANCE$cp()Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/woleapp/netpos/contactless/database/AppDatabase;->Companion:Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

    invoke-direct {v1, p1}, Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;->buildDatabase(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v1

    move-object v2, v1

    .line 45
    .local v2, "it":Lcom/woleapp/netpos/contactless/database/AppDatabase;
    const/4 v3, 0x0

    .line 35
    .local v3, "$i$a$-also-AppDatabase$Companion$getDatabaseInstance$1$1":I
    sget-object v4, Lcom/woleapp/netpos/contactless/database/AppDatabase;->Companion:Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->access$setINSTANCE$cp(Lcom/woleapp/netpos/contactless/database/AppDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .end local v0    # "$i$a$-synchronized-AppDatabase$Companion$getDatabaseInstance$1":I
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/database/AppDatabase;
    .end local v3    # "$i$a$-also-AppDatabase$Companion$getDatabaseInstance$1$1":I
    :cond_0
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 36
    :cond_1
    :goto_0
    return-object v0
.end method
