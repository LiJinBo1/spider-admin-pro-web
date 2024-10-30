<template>

  <el-button
    v-bind="$attrs"
    @click="handleCancel"
  >取消所有任务</el-button>

</template>

<script>
export default {
  name: '',

  props: {
    project: { type: String },
    scrapydServerId: { type: String },
  },

  components: {},

  data() {
    return {};
  },

  computed: {},

  methods: {
    async handleCancel() {
      const res = await this.$Http.scrapydCancelAllJob({
        project: this.project,
        scrapydServerId: this.scrapydServerId,
      });

      if (res.code == 0) {
        this.$message.success('取消成功');
      } else {
        this.$message.error(res.msg);
      }
    },
  },

  created() {},
};
</script>

<style lang="scss" scoped>
</style>

scrapydCancelAllJob
