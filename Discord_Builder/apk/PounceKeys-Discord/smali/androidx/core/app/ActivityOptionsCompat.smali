.class public Landroidx/core/app/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityOptionsCompat$Api24Impl;,
        Landroidx/core/app/ActivityOptionsCompat$Api21Impl;,
        Landroidx/core/app/ActivityOptionsCompat$Api23Impl;,
        Landroidx/core/app/ActivityOptionsCompat$Api16Impl;,
        Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    }
.end annotation


# static fields
.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method

.method public static makeBasic()Landroidx/core/app/ActivityOptionsCompat;
    .locals 2

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 249
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {}, Landroidx/core/app/ActivityOptionsCompat$Api23Impl;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0

    .line 251
    :cond_0
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Landroidx/core/app/ActivityOptionsCompat;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 124
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 125
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/app/ActivityOptionsCompat$Api23Impl;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    .line 124
    return-object v0

    .line 127
    :cond_0
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .line 69
    nop

    .line 70
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 71
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat$Api16Impl;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    .line 70
    return-object v0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroidx/core/app/ActivityOptionsCompat;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 99
    nop

    .line 100
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/app/ActivityOptionsCompat$Api16Impl;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .line 180
    nop

    .line 181
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 182
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat$Api21Impl;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    .line 181
    return-object v0
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Landroidx/core/util/Pair;)Landroidx/core/app/ActivityOptionsCompat;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroidx/core/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/app/ActivityOptionsCompat;"
        }
    .end annotation

    .line 209
    .local p1, "sharedElements":[Landroidx/core/util/Pair;, "[Landroidx/core/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    nop

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "pairs":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 212
    array-length v1, p1

    new-array v0, v1, [Landroid/util/Pair;

    .line 213
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 214
    aget-object v2, p1, v1

    iget-object v2, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    aget-object v3, p1, v1

    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 219
    invoke-static {p0, v0}, Landroidx/core/app/ActivityOptionsCompat$Api21Impl;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    .line 218
    return-object v1
.end method

.method public static makeTaskLaunchBehind()Landroidx/core/app/ActivityOptionsCompat;
    .locals 2

    .line 236
    nop

    .line 237
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {}, Landroidx/core/app/ActivityOptionsCompat$Api21Impl;->makeTaskLaunchBehind()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroidx/core/app/ActivityOptionsCompat;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .line 152
    nop

    .line 153
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 154
    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/ActivityOptionsCompat$Api16Impl;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    .line 153
    return-object v0
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .line 377
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroidx/core/app/ActivityOptionsCompat;
    .locals 0
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    .line 317
    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 0
    .param p1, "otherOptions"    # Landroidx/core/app/ActivityOptionsCompat;

    .line 349
    return-void
.end method
